import 'package:basic_flutter/pages/text_widget_page.dart';
import 'package:basic_flutter/pages/button_widget_page.dart';
import 'package:basic_flutter/pages/textfield_widget_page.dart';
import 'package:basic_flutter/pages/row_column_page.dart';
import 'package:basic_flutter/pages/stack_page.dart';
import 'package:basic_flutter/pages/listview_page.dart';
import 'package:basic_flutter/pages/stateless_widget_page.dart';
import 'package:basic_flutter/pages/stateful_widget_page.dart';
import 'package:basic_flutter/pages/app_bar_page.dart';
import 'package:basic_flutter/pages/expanded_flexible_page.dart';
import 'package:basic_flutter/pages/wrap_page.dart';
import 'package:basic_flutter/pages/scroll_direction_page.dart';
import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Basics'), elevation: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Card
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: AppTheme.primaryGradient,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.school, size: 48, color: AppTheme.white),
                    SizedBox(height: 16),
                    Text(
                      'Pelajari Flutter',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Komponen & Widget Dasar',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppTheme.white.withValues(alpha: 0.8),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              // Section Title
              Text(
                'Materi Pembelajaran',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.darkText,
                ),
              ),
              SizedBox(height: 16),
              // Grid View
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.1,
                children: [
                  _buildGridCard(
                    context,
                    icon: Icons.text_fields,
                    title: 'Text',
                    color: AppTheme.primaryDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => TextWidgetPage()),
                    ),
                  ),
                  _buildGridCard(
                    context,
                    icon: Icons.touch_app,
                    title: 'Button',
                    color: AppTheme.secondaryDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ButtonWidgetPage()),
                    ),
                  ),
                  _buildGridCard(
                    context,
                    icon: Icons.edit,
                    title: 'TextField',
                    color: AppTheme.accentDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => TextFieldWidgetPage()),
                    ),
                  ),
                  _buildGridCard(
                    context,
                    icon: Icons.dashboard,
                    title: 'Row & Column',
                    color: AppTheme.primaryDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => RowColumnPage()),
                    ),
                  ),
                  _buildGridCard(
                    context,
                    icon: Icons.layers,
                    title: 'Stack',
                    color: AppTheme.secondaryDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => StackPage()),
                    ),
                  ),
                  _buildGridCard(
                    context,
                    icon: Icons.table_chart,
                    title: 'AppBar & Tab',
                    color: AppTheme.warningColor,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => AppBarPage()),
                    ),
                  ),
                  _buildGridCard(
                    context,
                    icon: Icons.compress,
                    title: 'Expanded & Flex',
                    color: AppTheme.primaryDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ExpandedFlexiblePage()),
                    ),
                  ),
                  _buildGridCard(
                    context,
                    icon: Icons.wrap_text,
                    title: 'Wrap',
                    color: AppTheme.secondaryDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => WrapPage()),
                    ),
                  ),
                  _buildGridCard(
                    context,
                    icon: Icons.swap_vert,
                    title: 'Scroll Direction',
                    color: AppTheme.primaryDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ScrollDirectionPage()),
                    ),
                  ),
                  _buildGridCard(
                    context,
                    icon: Icons.list,
                    title: 'ListView',
                    color: AppTheme.accentDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ListViewPage()),
                    ),
                  ),
                  _buildGridCard(
                    context,
                    icon: Icons.block,
                    title: 'Stateless',
                    color: AppTheme.primaryDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => StatelessWidgetPage()),
                    ),
                  ),
                  _buildGridCard(
                    context,
                    icon: Icons.tune,
                    title: 'Stateful',
                    color: AppTheme.secondaryDark,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => StatefulWidgetPage()),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: _buildDrawer(context),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(gradient: AppTheme.primaryGradient),
            child: DrawerHeader(
              decoration: BoxDecoration(gradient: AppTheme.primaryGradient),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withValues(alpha: 0.7),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.school,
                      size: 40,
                      color: AppTheme.primaryDark,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Flutter Basics',
                    style: TextStyle(
                      color: AppTheme.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Learning Materials',
                    style: TextStyle(color: AppTheme.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          // Basic Widgets Section
          Padding(
            padding: EdgeInsets.only(left: 16, top: 16, bottom: 8),
            child: Text(
              'BASIC WIDGETS',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: AppTheme.lightText,
                letterSpacing: 1.2,
              ),
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.text_fields,
            label: 'Text Widget',
            color: AppTheme.secondaryLight,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TextWidgetPage()),
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.touch_app,
            label: 'Button Widgets',
            color: AppTheme.accentLight,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ButtonWidgetPage()),
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.edit,
            label: 'TextField Widget',
            color: AppTheme.hoverColor,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TextFieldWidgetPage()),
            ),
          ),
          Divider(height: 16, indent: 16, endIndent: 16),
          // Layout Widgets Section
          Padding(
            padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
            child: Text(
              'LAYOUT WIDGETS',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: AppTheme.lightText,
                letterSpacing: 1.2,
              ),
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.dashboard,
            label: 'Row & Column',
            color: AppTheme.secondaryLight,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RowColumnPage()),
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.layers,
            label: 'Stack Widget',
            color: AppTheme.accentLight,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StackPage()),
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.wrap_text,
            label: 'Wrap Widget',
            color: AppTheme.hoverColor,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WrapPage()),
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.swap_vert,
            label: 'Scroll Direction',
            color: AppTheme.secondaryLight,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScrollDirectionPage()),
            ),
          ),
          Divider(height: 16, indent: 16, endIndent: 16),
          // Scrollable Widgets Section
          Padding(
            padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
            child: Text(
              'SCROLLABLE WIDGETS',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: AppTheme.lightText,
                letterSpacing: 1.2,
              ),
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.list,
            label: 'ListView Widget',
            color: AppTheme.hoverColor,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListViewPage()),
            ),
          ),
          Divider(height: 16, indent: 16, endIndent: 16),
          // State Management Section
          Padding(
            padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
            child: Text(
              'STATE MANAGEMENT',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: AppTheme.lightText,
                letterSpacing: 1.2,
              ),
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.block,
            label: 'Stateless Widget',
            color: AppTheme.secondaryLight,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StatelessWidgetPage()),
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.tune,
            label: 'Stateful Widget',
            color: AppTheme.accentLight,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StatefulWidgetPage()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(8),
          child: Icon(icon, color: AppTheme.darkText, size: 20),
        ),
        title: Text(
          label,
          style: TextStyle(
            color: AppTheme.darkText,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(Icons.chevron_right, color: AppTheme.lightText),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        tileColor: Colors.transparent,
        onTap: () {
          Navigator.pop(context);
          onTap();
        },
      ),
    );
  }

  Widget _buildGridCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 32, color: color),
              ),
              SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.darkText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
