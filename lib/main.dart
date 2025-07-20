import 'package:flutter/material.dart';
import 'pages/get_started.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniHackers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF687FE5),
        scaffoldBackgroundColor: const Color(0xFFFEEBF6),
      ),
      home: const GetStartedPage(),
    );
  }
}
