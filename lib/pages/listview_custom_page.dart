import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewCustomPage extends StatelessWidget {
  const ListViewCustomPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(20, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(title: Text('ListView Custom Physics')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'BouncingScrollPhysics (iOS style)',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppTheme.darkText,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.blue.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue.withValues(alpha: 0.3)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back, color: Colors.blue, size: 18),
                      SizedBox(width: 12),
                      Text(
                        items[index],
                        style: TextStyle(
                          color: AppTheme.darkText,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Bounce',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'ClampingScrollPhysics (Android style)',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppTheme.darkText,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.green.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green.withValues(alpha: 0.3)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_downward, color: Colors.green, size: 18),
                      SizedBox(width: 12),
                      Text(
                        items[index],
                        style: TextStyle(
                          color: AppTheme.darkText,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Clamp',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}