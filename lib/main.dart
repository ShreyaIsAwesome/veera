import 'package:flutter/material.dart';
import 'package:main/pages/document_reader_page.dart';
import 'package:main/pages/home_page.dart';
import 'package:main/pages/landing_page.dart';
import 'package:main/pages/scanner_page.dart';
import 'package:main/pages/setting_page.dart';
import 'package:main/pages/library_page.dart';

void main() {
  runApp(const MyApp()); // Replace MyApp with your root widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/home_page": (context) => const HomePage(),
        "/document_reader_page" :(context) => const DocumentReaderPage(),
        "/scanner_page" :(context) => const ScannerPage(),
        "/library_page" :(context) => const LibraryPage(),
        "/setting_page" :(context) => const SettingsPage(),
        "/landing_page" :(context) => const LandingPage(),
      },
    );
  }
}