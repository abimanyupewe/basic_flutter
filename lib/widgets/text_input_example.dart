import 'package:flutter/material.dart';

class TextInputExample extends StatefulWidget {
  const TextInputExample({super.key});

  @override
  State<TextInputExample> createState() => _TextInputExampleState();
}

class _TextInputExampleState extends State<TextInputExample> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (value) => setState(() => _inputText = value),
          decoration: InputDecoration(hintText: 'Type something...'),
        ),
        SizedBox(height: 12),
        Text('You typed: $_inputText'),
      ],
    );
  }
}
