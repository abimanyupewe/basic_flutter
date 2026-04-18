import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TextWidgetPage extends StatelessWidget {
  const TextWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Widget')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Text Widget Examples',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppTheme.darkText,
              ),
            ),
            SizedBox(height: 16),
            _buildExampleCard(
              title: 'Basic Text',
              child: Text(
                'Simple text widget',
                style: TextStyle(color: AppTheme.darkText),
              ),
            ),
            _buildExampleCard(
              title: 'Styled Text',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bold & Blue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryDark,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Italic & Underline',
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                      color: AppTheme.secondaryLight,
                    ),
                  ),
                ],
              ),
            ),
            _buildExampleCard(
              title: 'Text Overflow',
              child: Text(
                'This is a long text that will be cut off with ellipsis when it exceeds the maximum number of lines.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: AppTheme.darkText),
              ),
            ),
            _buildExampleCard(
              title: 'Text Alignment',
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Left',
                      style: TextStyle(color: AppTheme.darkText),
                    ),
                  ),
                  SizedBox(height: 6),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Center',
                      style: TextStyle(color: AppTheme.darkText),
                    ),
                  ),
                  SizedBox(height: 6),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Right',
                      style: TextStyle(color: AppTheme.darkText),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExampleCard({required String title, required Widget child}) {
    return Card(
      margin: EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: AppTheme.darkText,
              ),
            ),
            SizedBox(height: 8),
            child,
          ],
        ),
      ),
    );
  }
}
