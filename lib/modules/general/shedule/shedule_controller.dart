import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:senai_feedback/main.dart';
import 'package:senai_feedback/models/feedback.dart';
import 'package:senai_feedback/repositories/fdbreceived_repository.dart';
import 'package:senai_feedback/shared/services/auth_service.dart';

abstract class StatePage<T> {}

class StateLoading implements StatePage {}

class StateError implements StatePage {
  final String error;
  StateError(this.error);
}

class StateSuccess<T> implements StatePage {
  final List<T> result;
  StateSuccess(this.result);
}

class SheduleController extends ValueNotifier<StatePage> {
  final FdbreceivedRepository fdReceivedRepository = FdbreceivedRepository();
  SheduleController() : super(StateLoading());

  Future<void> fetchAll() async {
    try {
      List<Feedback> result =
          await fdReceivedRepository.fetchAll(AuthService.to.userLogged!.id!);
      value = StateSuccess(result);
    } catch (e) {
      StateError("Algo inesperado ocorreu [PROCESSO DE BUSCA FEEDBACKS]");
    }
  }
}
