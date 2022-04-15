import 'package:flutter/material.dart';
import 'package:senai_feedback/shared/components/app_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              const SizedBox(
                height: 20,
              ),
              const AppTextformfield(
                label: 'E-mail',
                prefixIcon: Icon(Icons.email),
              ),
              const SizedBox(
                height: 10,
              ),
              const AppTextformfield(
                label: 'Senha',
                prefixIcon: Icon(Icons.lock),
                obscureText: true,
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                  child: Text(
                    'Recuperar senha'.toUpperCase(),
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                  alignment: Alignment.bottomRight),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () => print('logou'), child: Text('LOGIN')),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
