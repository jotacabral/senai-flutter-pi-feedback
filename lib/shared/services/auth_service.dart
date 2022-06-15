import 'package:flutter/cupertino.dart';
import 'package:senai_feedback/main.dart';

import '../../models/user_model.dart';

class AuthService {
  UserModel? _userLogged;

  static AuthService get to => getIt<AuthService>();

  set userModel(UserModel result) {
    _userLogged = result;
  }

  UserModel? get userLogged => _userLogged;
}
