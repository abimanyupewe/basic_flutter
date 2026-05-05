import 'package:flutter/material.dart';

class ToggleExample extends StatefulWidget {
  const ToggleExample({super.key});

  @override
  State<ToggleExample> createState() => _ToggleExampleState();
}

class _ToggleExampleState extends State<ToggleExample> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(_isToggled ? 'ON' : 'OFF'),
        Switch(
          value: _isToggled,
          onChanged: (value) => setState(() => _isToggled = value),
        ),
      ],
    );
  }
}
