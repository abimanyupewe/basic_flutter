import 'package:flutter/material.dart';
import 'package:basic_flutter/theme/app_theme.dart';

class VisibilityExample extends StatefulWidget {
  const VisibilityExample({super.key});

  @override
  State<VisibilityExample> createState() => _VisibilityExampleState();
}

class _VisibilityExampleState extends State<VisibilityExample> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_isVisible)
          Container(
            color: AppTheme.secondaryLight,
            padding: EdgeInsets.all(16),
            child: Text('Visible Content'),
          ),
        SizedBox(height: 12),
        ElevatedButton(
          onPressed: () => setState(() => _isVisible = !_isVisible),
          child: Text(_isVisible ? 'Hide' : 'Show'),
        ),
      ],
    );
  }
}
