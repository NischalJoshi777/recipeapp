import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myrecipeapp/config/routes/app_routes.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/hive_adapter_registry.dart';

import 'config/theme/app_theme.dart';

void main() async {
  setupLocator();
  await Hive.initFlutter();
  registerAdapters();
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
