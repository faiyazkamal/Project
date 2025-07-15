import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'themes/themes.dart';
import 'screens/search_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Athlytiq Search UI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SearchPage(),
    );
  }
}
