# Bazel Builder - Flutter ❤️ Bazel

Bazel Builder lets you run & bundle your configured Bazel targets as shared libraries with your application, for use via FFI at runtime. 

> Note - This should work fine with dart but it currently remains untested, but should be as simple as copying the libraries next to the binary 🤷‍♀️. Current priority is testing & finishing windows & linux support.

## Features

- Works on MacOS, iOS, Android (windows & linux in progress)
- Type-Safe loading of dynamic libraries in dart (no more runtime linking errors)
- Automatically includes libs in all platform builds (bundles into application without manual copying. Also correctly rebuilds when the native code changes)
- Select particular Bazel targets to build (pubspec configuration)
- Simple single build command to build all platforms (that can be built on host machine)

### Prerequisites

This readme assumes you are comfortable using both Bazel & Dart / Flutter.

### Current Dev TODO
 - Finish auto bundling for linux & windows
 - Make tweaks to where the libs are placed for raw dart applications (they don't get conveniently packaged as they do with this setup for flutter)
 - Do we need all the android remote stuff? Can we remove this as we aren't building or installing android binaries?

## Full Example

A full example is available in the `example` folder. This example includes a simple c++ library that adds two numbers together, and a flutter application that uses this library to add two numbers together with a 3 second delay (to simulate native work being asynchronously processed) and display the result. To build, you'll need to first run `flutter pub run bazel_builder:build`, then run your flutter build.

## Bazel Configuration

### All Platforms

We use configurations (the :<platformName> syntax, ie `common:linux_arm64` adds flags to all operations when bazel is being run as `bazel build --config=linux_arm64`) to set options per platform. These are then referenced by the builder when building for that platform. These also link to `platform`s in the `BUILD.bazel` file, to give you an easy way to change copts or other options per platform.

**Copy the `.bazelrc` and `BUILD.bazel` files from the example folder to your project root. You can then modify these to suit your project.**

### Windows & Linux

Windows & linux builds simply require code to be built as a dynamic linked library. Assuming you are building on the OS you're building for (ie windows on windows), bazel should work with the out of the box tool-chaining unless your build requires something further.

A minimal setup might look like this:

```starlark
cc_binary(
    name = "myLib_common",
    srcs = [
        "myLib.cpp",
        "myLib.h",
    ],
    linkshared = True,
)
```

### MacOS & iOS

MacOS builds can work using a setup as above, but it is preferred to use apple toolchains for MacOS & iOS. You'll need to be on mac and have xcode set up, unless you have a fancy cross-compilation setup.

> Note: If you for some reason need or want to build the macos .dylib with a normal cc_binary, you can do so. However, you will need to add the `linkopts = ["-install_name @rpath/lib<myTargetName>.dylib"]` attribute to the target to ensure the linker knows where to find the library at runtime. Bazel currently adds the wrong search path for the dylib, so flutter/dart isn't able to find it otherwise.

#### Module.bazel

You will need the following in your `MODULE.bazel` file to get and set up apple's toolchains:

```starlark
# Get and register the Apple toolchains
bazel_dep(name = "apple_support", version = "1.15.1")
bazel_dep(name = "rules_apple", version = "3.6.0", repo_name = "build_bazel_rules_apple")
```

#### symbols.exp

Both iOS & MacOS require a symbols.exp to tell the linker what symbols to make public. Even exported symbols are ignored unless both exported and in the `symbols.exp` file.

This file should contain a plain text list of the functions prefixed with an underscore. For example, if you had the c functions:

```c
int myFunction(int a, int b) {
    return a + b;
}
int myOtherFunction(int a, int b) {
    return a + b;
}
```

Your `symbols.exp` file would look like this:

```text
_myFunction
_myOtherFunction
```

This is true for both c and c++, but with c++, you'll also need to use `extern "C"` to prevent name mangling.

#### Info.plist

Both MacOS & iOS require an Info.plist file to be bundled with the dylib or framework. This can be practically empty, but it must exist. Here is a minimal example:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
</dict>
</plist>
```

#### MacOS
For MacOS, your `BUILD.bazel` might look like this:

```starlark
load("@build_bazel_rules_apple//apple:macos.bzl", "macos_dylib")

cc_library(
    name = "myLib",
    srcs = [
        "myLib.cpp",
        "myLib.h",
    ],
    visibility = ["//visibility:public"],
)

macos_dylib(
    name = "libmyLib_macos",
    bundle_id = "com.example.myLib",
    exported_symbols_lists = ["symbols.exp"],
    infoplists = ["Info.plist"],
    minimum_os_version = "10.11",
    deps = [":myLib"],
)
```

**IMPORTANT NOTE: The target name for macos MUST begin with 'lib'. Otherwise, the linker will fail to find the library when bundling it into the application**

To keep things consistent, I also recommend naming ios targets with 'lib' as well. This will mean that in this example, linux/android and windows targets get built to libmyLib_common.so and libmyLib_common.dll respectively (as lib is automatically prefixed without naming it as this), and macos will be libmyLib_macos.dylib and ios will be libmyLib_ios.framework.

#### iOS

For iOS, your `BUILD.bazel` might look like this:

```starlark
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework")

cc_library(
    name = "myLib",
    srcs = [
        "myLib.cpp",
        "myLib.h",
    ],
    visibility = ["//visibility:public"],
)

ios_framework(
    name = "libmyLib_ios",
    bundle_id = "com.example.myLib",
    exported_symbols_lists = ["symbols.exp"],
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = ["Info.plist"],
    minimum_os_version = "12.0",
    deps = [":myLib"],
)
```

### Android

The android tool-chaining for bazel is still being developed, and the rules are being migrated to Starlark. You'll need android studio set up with NDK 25 or newer (tested on 27 time of writing).

> Note, you can build with older ndk (22 or older) using the built in bazel `android_ndk_repository` function.

You'll also need to have the `ANDROID_HOME` and `ANDROID_NDK_HOME` environmental variables set or this WILL NOT WORK. Sometimes, android studio will also need `JAVA_HOME` set. My `~/.zshrc` on my mac looks like this with the newest android studio (koala):

```sh
# Android Studio
export ANDROID_HOME=/Users/<myUserHome>/Library/Android/sdk
export ANDROID_NDK_HOME=/Users/<myUserHome>/Library/Android/sdk/ndk/27.0.11902837

# Java
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jbr/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
```

#### Module.bazel

You will need the following in your `MODULE.bazel` file to get and set up android's toolchains:

```starlark
# Get rules_android and rules_android_ndk from github
RULES_ANDROID_COMMIT = "e02da4d00ad81d44f1c8fd1b2ee46f057afdd392"
bazel_dep(name = "rules_android")
git_override(
    module_name = "rules_android",
    remote = "https://github.com/bazelbuild/rules_android",
    commit = RULES_ANDROID_COMMIT,
)

RULES_ANDROID_NDK_COMMIT = "d5c9d46a471e8fcd80e7ec5521b78bb2df48f4e0"
bazel_dep(name = "rules_android_ndk")
git_override(
    module_name = "rules_android_ndk",
    remote = "https://github.com/bazelbuild/rules_android_ndk",
    commit = RULES_ANDROID_NDK_COMMIT,
)

# Use the extensions to set up the android tools
remote_android_extensions = use_extension("@bazel_tools//tools/android:android_extensions.bzl", "remote_android_tools_extensions")
android_sdk_repository_extension = use_extension("@rules_android//rules/android_sdk_repository:rule.bzl", "android_sdk_repository_extension")
android_ndk_repository_extension = use_extension("@rules_android_ndk//:extension.bzl", "android_ndk_repository_extension")

# Add the repos
use_repo(remote_android_extensions, "android_gmaven_r8", "android_tools")
use_repo(android_sdk_repository_extension, "androidsdk")
use_repo(android_ndk_repository_extension, "androidndk")

# Register the android toolchains
register_toolchains(
    "@rules_android//toolchains/android:android_default_toolchain",
    "@rules_android//toolchains/android_sdk:android_sdk_tools",
    "@androidsdk//:sdk-toolchain",
    "@androidsdk//:all",
    "@androidndk//:all",
)
```

#### BUILD.bazel

Now, you can build the same target as for linux and windows, but with the android toolchain. Here was the target example again:

```starlark
cc_binary(
    name = "myLib_common",
    srcs = [
        "myLib.cpp",
        "myLib.h",
    ],
    linkshared = True,
)
```

## Dart / Flutter Configuration

### All Platforms

Configuration of the builder will be via pubspec.yaml. You can add multiple targets and different bazel targets per platform. You can also modify which platforms are built on which host. Here's a full example yaml:

```yaml
bazel_builder_config: # All the bazel builder configuration goes in here
  buildOnLinux: # Which platforms to build on linux host
    android: # Build one android .so for arm64 and one for x86_64
      arm: false
      arm64: true
      x86: false
      x86_64: true
    linux: # Build one linux .so for arm64 and one for x86_64
      x86_64: true
      arm64: true
  buildOnWindows: # Which platforms to build on windows host
    windows: # Build one windows .dll for arm64 and one for x86_64
      x86_32: false
      x86_64: true
      arm64: true
  buildOnMacos: # Which platforms to build on macos host
    macos: # On macOS, you can build either/both a dylib for arm64 and x86_64, or you can build a universal binary which has both architectures built into the one (bigger size but easier distribution)
      x86_64: false
      arm64: false
      universal: true
    ios: 
      buildIosSimulator: true # Build for the simulator or for a real device. Can't build both architectures together!
    android:
      arm: false
      arm64: true
      x86: true
      x86_64: true
  targets: # A set of bazel targets to build. The key name 'MyLib' will be used to load the lib in dart, and doesn't have to match anything else. The target strings are the bazel targets to build for each platform. This example assumes your bazel BUILD is in src/myLib (from the root level of the project, not within the lib folder)
    MyLib: 
      platforms: 
        android: 
          target: '//src/myLib:myLib_common'
        windows: 
          target: '//src/myLib:myLib_common'
        linux: 
          target: '//src/myLib:myLib_common'
        macos: 
          target: '//src/myLib:libmyLib_macos'
        ios: 
          target: '//src/myLib:libmyLib_ios'
```

### Linux & Windows
TODO: Add instructions and support for auto bundling linux and windows

### MacOS & iOS

In order to bundle your `dylib`(s) and `frameworks`(s) with your mac/ios application, they need to be added as a CocoaPods module so they can be bundled with the app on build.

***Note: Your `Podfile` won't be generated by flutter until after you've added your first dependency with native code and run a dart / flutter `pub get`. I recommend adding `path_provider` if you don't currently have any ffi native deps. YOU NEED TO HAVE A PLUGIN THAT BUILDS NATIVE MACOS CODE OR FLUTTER WILL IGNORE THE PODSPEC ANYWAY.***

To do that, you'll need to add `pod 'bazel_builder', :path => '../build/shared_libs/bazel_builder.podspec'` to your Podfile, inside the `target 'Runner' do` block. I recommend putting it here:
```podspec
target 'Runner' do
  use_frameworks!
  use_modular_headers!

  pod 'bazel_builder', :path => '../build/shared_libs/bazel_builder.podspec' # ADDED!

  flutter_install_all_macos_pods File.dirname(File.realpath(__FILE__))
  target 'RunnerTests' do
    inherit! :search_paths
  end
end
```

When you run the builder script, it will make a `bazel_builder.podspec` file in the `build/shared_libs` directory. This will add all the `.dylib`s and `.frameworks` as a module to the build.

**NOTE: You'll need to add this to both the iOS podspec and Macos podspec if you're wanting to build both**

### Android:

Inside your android folder, inside the `app` folder, you'll need to add the following to your `build.gradle` file:

```gradle
android {
    ... Existing configuration ...

    sourceSets {
        main {
            jniLibs.srcDirs = ['src/main/jniLibs', '../../build/shared_libs/android']
        }
    }
}
```

This will tell android to include the `.so` files that get built from bazel and parsed through the bazel builder into the build.

## Running the Utility

**To run the build, execute `flutter pub run bazel_builder:build`**

This command will run `bazel build <target>` on all the targets in your `pubspec.yaml` for the selected the platforms you set up (targeting the relevant configs in your `.bazelrc` and their appropriate flags), copy the shared objects, and create the `dynamic_libs.dart` file in the root of the lib folder.

### The generated `dynamic_libs.dart` file

When run, this utility generates a `dynamic_libs.dart` file in the root of the lib folder. This file has getters defined for each dynamic library that is bundled to be in your application. By doing this, you now have a variable that contains the string filename for each lib, and no longer have to worry about runtime linkages failing due to incorrect file names. If you change the library names in your `pubspec.yaml` configuration, this tool will regenerate a matching `dynamic_libs.dart`, and your code will statically fail to compile until you correct the variable names and can be 100% sure you're opening the library that exists and you intend to. For a target named `dynamic_library_target`, you'd use this as follows:

```dart
import 'package:my_package/dynamic_libs.dart';

void openLibs() {
  DynamicLibrary.open(DynamicLibs.dynamic_library_target);
}
```

Yes, it will indeed point to the right file on the relevant platform, even if it ends with `.dylib`, `.so`, `.dll` or is prefixed with `lib`, as the file names that get built are parsed via the tool from bazel.

## Additional information

This package is currently a relatively simple prototype, and ideally isn't needed at all once [Native Assets Dart](https://github.com/dart-lang/sdk/issues/50565) and [Native Assets Flutter](https://github.com/flutter/flutter/issues/129757) is out, although it may just morph to be an extension using these systems if bazel support is still non-trivial to implement in a project.
