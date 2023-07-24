import 'package:flutter/material.dart';
import 'package:flutter_keys_application_/pages/animated_text.dart';
import 'package:flutter_keys_application_/pages/list_keys_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: AnimatedText(),
      home: ListKeysPage(),
    );
  }
}
