import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(50, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(title: Text('ListView.builder')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppTheme.borderColor),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.03),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: AppTheme.primaryDark.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: AppTheme.primaryDark,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index],
                        style: TextStyle(
                          color: AppTheme.darkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Lazy loading - builds items on demand',
                        style: TextStyle(
                          color: AppTheme.lightText,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppTheme.lightText,
                  size: 16,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}