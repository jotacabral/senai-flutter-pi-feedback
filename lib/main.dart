import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:senai_feedback/shared/services/auth_service.dart';

import 'modules/splash/splash_page.dart';

GetIt getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<AuthService>(AuthService());
}

void main() {
  setupGetIt();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashPage());
  }
}
