import 'package:flutter/material.dart';
import 'package:senai_feedback/shared/navigator.dart';
import '../../shared/app_ui.dart';
import '../auth/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3),
        () => push(context, LoginPage(), replace: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppUi.colorMain,
        body: Center(
          child: Image.asset('assets/images/logo.png'),
        ));
  }
}
