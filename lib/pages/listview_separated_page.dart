import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewSeparatedPage extends StatelessWidget {
  const ListViewSeparatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(15, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(title: Text('ListView.separated')),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: items.length,
        separatorBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            height: 1,
            color: AppTheme.borderColor,
          );
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppTheme.secondaryLight,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: AppTheme.darkText,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 14),
                Expanded(
                  child: Text(
                    items[index],
                    style: TextStyle(
                      color: AppTheme.darkText,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.red.withValues(alpha: 0.6),
                  size: 20,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}