import 'package:basic_flutter/pages/home_page.dart';
import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterBasic());
}

class FlutterBasic extends StatelessWidget {
  const FlutterBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basic',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
