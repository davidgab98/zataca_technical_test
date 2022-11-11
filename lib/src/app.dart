import 'package:flutter/material.dart';
import 'package:zataca_technical_test/src/features/main_page/presentation/screens/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba Tecnica Zataca',
      home: MainPage(),
    );
  }
}
