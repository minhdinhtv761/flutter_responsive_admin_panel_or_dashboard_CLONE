import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/constants.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/screens/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        primarySwatch: Colors.blue,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        canvasColor: secondaryColor,
        textTheme: const TextTheme().apply(
          bodyColor: Colors.white,
        ),
      ),
      home: const MainScreen(),
    );
  }
}
