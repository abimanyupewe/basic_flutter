import 'package:flutter/material.dart';

void main() {
  runApp(Sushi());
}

class Sushi extends StatelessWidget {
  const Sushi({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Hello')));
  }
}
