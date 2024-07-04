// ignore_for_file: non_constant_identifier_names, avoid_classes_with_only_static_members, require_trailing_commas
import 'dart:io';

class DynamicLibs {
  static String get NativeAdd => _getSharedLibraryName(
    'libnative_add_ios', 'libnative_add_macos', 'libnative_add_common', '', '');

  static String _getSharedLibraryName(
    final String iosName,
    final String macosName,
    final String androidName,
    final String windowsName,
    final String linuxName,
  ) {
    if (Platform.isIOS && iosName.isNotEmpty) {
      return '$iosName.framework/$iosName'; // iOS uses the framework system
    } else if (Platform.isMacOS && macosName.isNotEmpty) {
      return '$macosName.dylib'; // macOS uses the .dylib extension
    } else if (Platform.isAndroid && androidName.isNotEmpty) {
      return '$androidName.so'; // Android uses the .so extension
    } else if (Platform.isWindows && windowsName.isNotEmpty) {
      return '$windowsName.dll'; // Windows uses the .dll extension
    } else if (Platform.isLinux && linuxName.isNotEmpty) {
      return '$linuxName.so'; // Linux uses the .so extension
    }
    throw UnsupportedError('Unsupported platform or missing library name');
  }
}
