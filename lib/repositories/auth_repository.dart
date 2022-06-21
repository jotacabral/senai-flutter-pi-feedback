import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:senai_feedback/models/user_model.dart';
import 'package:senai_feedback/shared/const.dart';

class AuthRepository {
  Future<UserModel> login(String email, String senha) async {
    final String url = Const.baseUrl + "pessoas/getByEmail/$email";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonDec = json.decode(utf8.decode(response.bodyBytes));
      if (jsonDec["senha"] != senha) {
        throw "Senha invalida!";
      }
      return UserModel.fromJson(jsonDec);
    }
    throw "Falha ao realizar o login, CODE ${response.statusCode}";
  }
}
