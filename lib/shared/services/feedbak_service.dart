import 'package:flutter/cupertino.dart';
import 'package:senai_feedback/models/feedback.dart';
import 'package:senai_feedback/repositories/fdbreceived_repository.dart';
import 'package:senai_feedback/shared/services/auth_service.dart';

import '../states.dart';

enum TypeList { ListShedule, ListHistory }

class FeedbackService extends ValueNotifier<StatePage> {
  final FdbreceivedRepository fdReceivedRepository = FdbreceivedRepository();
  final TypeList typeList;
  FeedbackService(this.typeList) : super(StateLoading());

  String getUrl() {
    final userLogged = AuthService.to.userLogged;

    final String data = userLogged!.perfils!.isEmpty ? 'avaliado' : 'avaliador';

    switch (typeList) {
      case TypeList.ListShedule:
        return 'feedbacks/pessoa/$data/pendente/${userLogged.id!}';
      case TypeList.ListHistory:
        return 'feedbacks/pessoa/$data/aplicado/${userLogged.id!}';
    }
  }

  Future<void> fetchAll() async {
    try {
      List<FeedbackModel> result =
          await fdReceivedRepository.fetchAll(getUrl());
      value = StateSuccess<FeedbackModel>(result);
    } catch (e) {
      value =
          StateError("Algo inesperado ocorreu [PROCESSO DE BUSCA FEEDBACKS]");
    }
  }
}
