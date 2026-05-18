import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewDefaultPage extends StatelessWidget {
  const ListViewDefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(20, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(title: Text('ListView Default')),
      body: ListView(
        children: items.map((item) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: AppTheme.primaryDark,
              foregroundColor: AppTheme.white,
              radius: 16,
              child: Text(
                item.split(' ')[1],
                style: TextStyle(fontSize: 12),
              ),
            ),
            title: Text(
              item,
              style: TextStyle(
                color: AppTheme.darkText,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              'Default ListView - All items built at once',
              style: TextStyle(
                color: AppTheme.lightText,
                fontSize: 12,
              ),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: AppTheme.lightText,
              size: 20,
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('$item tapped!'),
                  duration: Duration(milliseconds: 500),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}