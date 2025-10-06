import 'package:flutter/material.dart';
import 'package:couldai_user_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مراحل تطور البحث العلمي',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Tajawal', fontSize: 18.0),
          bodyMedium: TextStyle(fontFamily: 'Tajawal', fontSize: 16.0),
          titleLarge: TextStyle(fontFamily: 'Tajawal', fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: HomePage(),
      ),
    );
  }
}
