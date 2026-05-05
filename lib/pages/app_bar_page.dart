import 'package:flutter/material.dart';
import 'package:basic_flutter/theme/app_theme.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: AppTheme.primaryDark),
                child: Text(
                  'Menu Profil',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Beranda'),
                onTap: () => Navigator.pop(context),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text('Kembali ke Menu Utama'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        appBar: AppBar(
          backgroundColor: AppTheme.primaryDark,
          foregroundColor: Colors.white,
          title: Text('AppBar Sederhana'),
          centerTitle: false,

          // leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),

          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],

          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4.0,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white54,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: 'Chat'),
              Tab(text: 'Status'),
              Tab(text: 'Panggilan'),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Center(
              child: Text('Ini Halaman Chat', style: TextStyle(fontSize: 18)),
            ),
            Center(
              child: Text('Ini Halaman Status', style: TextStyle(fontSize: 18)),
            ),
            Center(
              child: Text(
                'Ini Halaman Panggilan',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
