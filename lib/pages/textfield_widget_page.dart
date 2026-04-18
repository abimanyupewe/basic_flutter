import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TextFieldWidgetPage extends StatefulWidget {
  const TextFieldWidgetPage({super.key});

  @override
  State<TextFieldWidgetPage> createState() => _TextFieldWidgetPageState();
}

class _TextFieldWidgetPageState extends State<TextFieldWidgetPage> {
  late TextEditingController _controller;
  String _inputText = '';

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextField Widget')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TextField Examples',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppTheme.darkText,
              ),
            ),
            SizedBox(height: 16),
            _buildExampleCard(
              title: 'Basic TextField',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: _controller,
                    onChanged: (value) {
                      setState(() {
                        _inputText = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter text',
                      filled: true,
                      fillColor: AppTheme.lightBg,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Input: $_inputText',
                    style: TextStyle(color: AppTheme.darkText, fontSize: 12),
                  ),
                ],
              ),
            ),
            _buildExampleCard(
              title: 'Email TextField',
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email, color: AppTheme.primaryDark),
                  filled: true,
                  fillColor: AppTheme.lightBg,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            _buildExampleCard(
              title: 'Password TextField',
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter password',
                  prefixIcon: Icon(Icons.lock, color: AppTheme.secondaryLight),
                  suffixIcon: Icon(Icons.visibility_off),
                  filled: true,
                  fillColor: AppTheme.lightBg,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            _buildExampleCard(
              title: 'Multi-line TextField',
              child: TextField(
                maxLength: 50,
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: 'Message',
                  hintText: 'Type your message',
                  filled: true,
                  fillColor: AppTheme.lightBg,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
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
