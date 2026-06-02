import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ButtonWidgetPage extends StatelessWidget {
  const ButtonWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Widgets')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Button Types',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppTheme.darkText,
              ),
            ),
            SizedBox(height: 16),
            _buildExampleCard(
              title: 'ElevatedButton',
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.secondaryLight,
                  foregroundColor: AppTheme.darkText,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('ElevatedButton pressed!')),
                  );
                },
                child: Text('Press me'),
              ),
            ),
            _buildExampleCard(
              title: 'TextButton',
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: AppTheme.primaryDark,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('TextButton pressed!')),
                  );
                },
                child: Text('Press me'),
              ),
            ),
            _buildExampleCard(
              title: 'OutlinedButton',
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppTheme.darkText,
                  side: BorderSide(color: AppTheme.borderColor, width: 2),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('OutlinedButton pressed!')),
                  );
                },
                child: Text('Press me'),
              ),
            ),
            _buildExampleCard(
              title: 'IconButton',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text('Favorite!')));
                    },
                    icon: Icon(Icons.favorite),
                    color: Colors.red.withValues(alpha: 0.7),
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text('Star!')));
                    },
                    icon: Icon(Icons.star),
                    color: AppTheme.accentLight,
                  ),
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text('Share!')));
                    },
                    icon: Icon(Icons.share),
                    color: AppTheme.primaryDark,
                  ),
                ],
              ),
            ),
            _buildExampleCard(
              title: 'FloatingActionButton',
              child: Center(
                child: FloatingActionButton(
                  onPressed: () {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('FAB pressed!')));
                  },
                  backgroundColor: AppTheme.accentLight,
                  child: Icon(Icons.add),
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
