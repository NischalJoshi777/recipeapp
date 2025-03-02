import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myrecipeapp/config/routes/app_routes.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/firebase_options.dart';
import 'package:myrecipeapp/hive_adapter_registry.dart';
import 'package:myrecipeapp/presentation/auth/auth_cubit/auth_cubit.dart';

import 'config/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupLocator();
  await Hive.initFlutter();
  registerAdapters();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<AuthCubit>()..checkSession(),
      child: Builder(builder: (context) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: lightThemeData,
          routerConfig: myRouter,
        );
      }),
    );
  }
}
