import 'dart:io';
import 'package:bazel_builder/src/structures.dart';
import 'package:pubspec_yaml/pubspec_yaml.dart';

BazelBuilderConfig parseConfig() {
  final PubspecYaml pubspecYaml =
      File('pubspec.yaml').readAsStringSync().toPubspecYaml();

  final customSettings = pubspecYaml.customFields;

  if (!customSettings.containsKey('bazel_builder_config')) {
    throw Exception(
        'The required "bazel_builder_config" key is not found in the pubspec.yaml file.');
  }

  return BazelBuilderConfig.fromJson(customSettings['bazel_builder_config']);
}
