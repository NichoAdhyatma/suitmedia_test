import 'package:flutter/material.dart';
import 'package:suitmedia_msib/core/theme/app_theme.dart';
import 'package:suitmedia_msib/features/screen_1/screen_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: const Screen1(),
    );
  }
}

