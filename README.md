# bazel_builder
A simple way to run your bazel build configuration to re-generate your dart / flutter Native Assets (c/c++ dynamic libs)

<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Bazel Builder lets you run & bundle your configured Bazel targets as shared libraries with your application, for use via FFI lib at runtime. 

## Features

- Type-Safe loading of dynamic lib files
- Select particular Bazel targets to build
- Simple single build command
- Automatically copies libs to build folder & bundles into application during compile
- Works on MacOS & Windows (more platforms to come)

## Getting started

### Prerequisites

#### Bazel Targets

Your bazel target must be a `cc_binary` that will compile to a dynamic linked library. Make sure the `linkshared = True,` attribute is set. On Mac, bazel embeds the wrong search path for the dylib. Add `linkopts = ["-install_name @rpath/lib<myTargetName>.dylib"]` so the application searches in the right place for the library at runtime. Make sure to replace `<myTargetName>` with the name of your target.

Your final target could be something like this:
```starlark
cc_binary(
    name = "dynamic_library_target",
    srcs = ["src/dynamic_library_target.c"], # if you keep a src folder in the root for your native code
    linkshared = True,
    linkopts = [
        "-install_name @rpath/libdynamic_library_target.dylib"
    ],
)
```

#### Pubspec Configuration

Bazel Builder runs a `bazel build` on the targets you specify in your `pubspec.yaml`. You need to specify by adding a block that lists the targets like this:

```starlark
bazel_builder_config:
  targets: ["dynamic_library_target"]
```

This plugin runs Bazel via shell commands from the root of the project (pubspec.yaml), make sure your defined targets are relative to here.

#### The `dynamic_libs.dart` file

When run, this utility generates a `dynamic_libs.dart` file in the root of the lib folder. This file has getters defined for each dynamic library that is bundled to be in your application. By doing this, you now have a variable that contains the string filename for each lib, and no longer have to worry about runtime linkages failing due to incorrect file names. If you change the output names in your Bazel configuration, this tool will regenerate a matching `dynamic_libs.dart`, and your code will statically fail to compile until you correct the variable names and can be 100% sure you're opening the library you intend to. For a target named `dynamic_library_target`, you'd use this as follows:

```dart
import 'package:dynalink/dynamic_libs.dart';

void openLibs() {
  DynamicLibrary.open(DynamicLibs.dynamic_library_target);
}
```

Yes, it will indeed point to the right file on the relevant platform, even if it ends with `.dylib`, `.so`, `.dll` or is prefixed with `lib`.

### MacOS

In order to bundle your `dylib`(s) with your mac application, they need to be added as a CocoaPods module so they can be signed and whatever else apple requires for things to work nicely 🤷‍♀️

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

When you run the builder script, it will make a `bazel_builder.podspec` file in the `build/shared_libs` directory. This will add all the `.dylib`s as a module to the build.

## Usage

**To run the build, execute `flutter pub run bazel_builder:build`**

This command will run `bazel build <target>` on all the targets in your `pubspec.yaml`, copy the shared objects, and create anything else needed to tell flutter to bundle everything into your final build.

## Additional information

This package is only a very simple prototype, and ideally isn't needed at all once [Native Assets Dart](https://github.com/dart-lang/sdk/issues/50565) and [Native Assets Flutter](https://github.com/flutter/flutter/issues/129757) is out, although it may just morph to be an extension using these systems if bazel support is still non-trivial to implement in a project.
