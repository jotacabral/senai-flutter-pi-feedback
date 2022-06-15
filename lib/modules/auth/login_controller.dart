import 'package:senai_feedback/repositories/auth_repository.dart';
import 'package:senai_feedback/shared/services/auth_service.dart';

class LoginController {
  final AuthRepository repository = AuthRepository();

  Future login(String email, String password) async {
    validateFields(email, password);
    AuthService.to.userModel = await repository.login(email, password);
  }

  bool isEmail(String value) => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value);

  validateFields(String? email, String? password) {
    if (email!.isEmpty) {
      throw 'Email não pode ser vazio!';
    }

    if (!isEmail(email)) {
      throw 'Favor insira e-mail válido!';
    }

    if (password!.isEmpty) {
      throw 'Senha não pode ser vazio!';
    }

    return null;
  }
}
