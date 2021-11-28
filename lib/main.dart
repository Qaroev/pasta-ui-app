import 'package:flutter/material.dart';
import 'package:pasta_ui_app/screens/home_screen.dart';


void main() {
  runApp(const PastaUIApp());
}

class PastaUIApp extends StatelessWidget {
  const PastaUIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}