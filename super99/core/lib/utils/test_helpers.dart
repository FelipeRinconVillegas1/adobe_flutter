// ignore: depend_on_referenced_packages
import 'package:test/test.dart';

abstract class TestHelpers {
  /// Delete all spaces and compare the strings without spaces between them
  static void expectMutation(String actualMutation, String expectedMutation) {
    expect(actualMutation.replaceAll(RegExp(r'\s'), ''), equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
  }
}
