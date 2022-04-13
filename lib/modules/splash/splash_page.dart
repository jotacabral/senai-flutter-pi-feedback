import 'package:flutter/material.dart';
import '../../shared/app_ui.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppUi.colorMain,
        body: Center(
          child: Image.asset('assets/images/logo.png'),
        ));
  }
}
