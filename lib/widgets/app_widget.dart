import 'package:flutter/material.dart';

import 'calculator.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Center(
      child: SizedBox(
        width: 200,
        height: 100,
        child: Calculator(),
      ),
    ));
  }
}
