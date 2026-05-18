import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'listview_default_page.dart';
import 'listview_builder_page.dart';
import 'listview_separated_page.dart';
import 'listview_custom_page.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Types')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildMenuCard(
            context,
            title: 'ListView Default',
            subtitle: 'Creates all items at once',
            icon: Icons.list,
            color: Colors.blue,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ListViewDefaultPage()),
            ),
          ),
          SizedBox(height: 12),
          _buildMenuCard(
            context,
            title: 'ListView.builder',
            subtitle: 'Lazy loading - builds items on demand',
            icon: Icons.build,
            color: Colors.green,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ListViewBuilderPage()),
            ),
          ),
          SizedBox(height: 12),
          _buildMenuCard(
            context,
            title: 'ListView.separated',
            subtitle: 'Items with separator between them',
            icon: Icons.view_agenda,
            color: Colors.orange,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ListViewSeparatedPage()),
            ),
          ),
          SizedBox(height: 12),
          _buildMenuCard(
            context,
            title: 'ListView Custom',
            subtitle: 'Custom physics & children delegate',
            icon: Icons.tune,
            color: Colors.purple,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ListViewCustomPage()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.borderColor),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: color, size: 26),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: AppTheme.darkText,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: AppTheme.lightText,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: AppTheme.lightText,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}