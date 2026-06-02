import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../widgets/counter_example.dart';
import '../widgets/slider_example.dart';
import '../widgets/text_input_example.dart';
import '../widgets/toggle_example.dart';
import '../widgets/visibility_example.dart';

class StatefulWidgetPage extends StatelessWidget {
  const StatefulWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful Widget')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _buildExample('Counter', CounterExample()),
            _buildExample('Text Input', TextInputExample()),
            _buildExample('Toggle', ToggleExample()),
            _buildExample('Slider', SliderExample()),
            _buildExample('Visibility', VisibilityExample()),
          ],
        ),
      ),
    );
  }

  Widget _buildExample(String name, Widget widget) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: AppTheme.darkText,
                ),
              ),
              SizedBox(height: 16),
              widget,
            ],
          ),
        ),
      ),
    );
  }
}
