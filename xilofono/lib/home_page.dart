import 'package:flutter/material.dart';
import 'package:xilofono/piano.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Piano(),
    );
  }
}
