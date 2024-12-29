import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/routes/app_routes.dart';

import 'config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: lightThemeData,
      routerConfig: myRouter,
    );
  }
}
