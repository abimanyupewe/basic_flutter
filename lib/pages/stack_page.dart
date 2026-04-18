import 'package:basic_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Widget')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stack Examples',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppTheme.darkText,
              ),
            ),
            SizedBox(height: 16),
            _buildExampleCard(
              title: 'Basic Stack',
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: AppTheme.primaryDark.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 120,
                      decoration: BoxDecoration(
                        color: AppTheme.primaryDark,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 30,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: AppTheme.secondaryLight,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 15,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: AppTheme.accentLight,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _buildExampleCard(
              title: 'Stack with Text',
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  gradient: AppTheme.accentGradient,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      'Text on Stack',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.darkText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _buildExampleCard(
              title: 'Stack with Badge',
              child: Stack(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    size: 40,
                    color: AppTheme.primaryDark,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.red.withValues(alpha: 0.7),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _buildExampleCard(
              title: 'Profile Avatar',
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: AppTheme.secondaryLight,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: AppTheme.darkText,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.8),
                        shape: BoxShape.circle,
                        border: Border.all(color: AppTheme.white, width: 2),
                      ),
                    ),
                  ),
                ],
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
