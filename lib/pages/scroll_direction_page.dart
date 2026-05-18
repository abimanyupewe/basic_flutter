import 'package:basic_flutter/widgets/scroll_direction_example.dart';
import 'package:flutter/material.dart';

class ScrollDirectionPage extends StatelessWidget {
  const ScrollDirectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scroll Direction')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ScrollDirectionExample(),
          ],
        ),
      ),
    );
  }
}