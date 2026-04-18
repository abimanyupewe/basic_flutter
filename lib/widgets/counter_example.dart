import 'package:flutter/material.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$_counter',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => setState(() => _counter--),
              child: Text('-'),
            ),
            SizedBox(width: 12),
            ElevatedButton(
              onPressed: () => setState(() => _counter++),
              child: Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
