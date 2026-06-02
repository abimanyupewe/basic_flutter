import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: _sliderValue,
          min: 0,
          max: 100,
          onChanged: (value) => setState(() => _sliderValue = value),
        ),
        Text('${_sliderValue.toStringAsFixed(1)}%'),
      ],
    );
  }
}
