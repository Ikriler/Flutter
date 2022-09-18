import 'package:flutter/material.dart';
import 'package:flutter_sklad/screen.dart';
import 'package:flutter_sklad/screens/medinow.dart';
import 'package:flutter_sklad/screens/mindDeepRelax.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MindDeepRelax(),
      debugShowCheckedModeBanner: false,
    );
  }
}

