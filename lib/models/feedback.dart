class FeedbackModel {
  late String descricao;
  late String resumo;

  FeedbackModel.fromJson(Map<String, dynamic> value) {
    descricao = value['motivo']['descricao'];
    resumo = value['motivo']['resumo'];
  }
}
