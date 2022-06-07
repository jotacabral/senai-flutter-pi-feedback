//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:senai_feedback/modules/auth/login_controller.dart';
import 'package:senai_feedback/modules/general/general_page.dart';
import 'package:senai_feedback/shared/components/app_text_field.dart';
import '../../shared/app_ui.dart';
import '../../shared/navigator.dart';
import '../general/home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller = LoginController();
  TextEditingController? edtEmail;
  TextEditingController? edtSenha;

  @override
  void initState() {
    super.initState();

    edtEmail = TextEditingController();
    edtSenha = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            AppTextformfield(
              controller: edtEmail,
              label: 'E-mail',
              prefixIcon: Icon(Icons.email),
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextformfield(
              controller: edtSenha,
              label: 'Senha',
              prefixIcon: Icon(Icons.lock),
              obscureText: true,
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
                child: InkWell(
                  onTap: () => print('...'),
                  child: Text(
                    'Recuperar senha'.toUpperCase(),
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ),
                alignment: Alignment.bottomRight),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppUi.colorB,
                  ),
                  onPressed: () async {
                    try {
                      await controller.login(edtEmail!.text, edtSenha!.text);
                    } catch (e) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('OPS'),
                              content: Text(e.toString()),
                            );
                          });
                    }
                  },
                  child: Text('LOGIN')),
            ),
          ],
        ),
      )),
    );
  }
}
