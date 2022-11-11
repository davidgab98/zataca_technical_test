import 'package:flutter/material.dart';
import 'package:zataca_technical_test/src/core/di/service_locator.dart';
import 'src/app.dart';

void main() async {
  await serviceLocatorSetUp();
  runApp(const MyApp());
}
