import 'package:flutter/material.dart';
import 'package:myrecipeapp/main_view.dart';

import 'config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final lightThemeData = ThemeData(
      brightness: Brightness.light,
      extensions: [myTheme],
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeData,
      home: const MainView(),
    );
  }
}
