import 'package:flutter/material.dart';
import 'package:main/app_colors.dart';
import 'package:main/pages/document_reader_page.dart';
import 'package:main/pages/home_page.dart';
import 'package:main/pages/library_page.dart';
import 'package:main/pages/scanner_page.dart';
import 'package:main/pages/setting_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    DocumentReaderPage(),
    ScannerPage(),
    LibraryPage(),
  ];

  void _onNavTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      
      appBar: AppBar(
        leading: Icon(Icons.logo_dev, color: Colors.white,),
        title: Text("V    E    E    R    A",
        style: TextStyle(
          color: Colors.white
        ),),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              debugPrint("go to settings!");
            } ,
             icon: Icon(Icons.settings, color: Colors.white,))
        ],
        backgroundColor: AppColors.accentGrey
        ),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onNavTap,
        backgroundColor: AppColors.accentGrey,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Reader'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner), label: 'Scan'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Library'),
        ],
      ),
    );
  }
}