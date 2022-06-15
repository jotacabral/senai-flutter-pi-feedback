class Feedback {
  late String descricao;
  late String resumo;

  Feedback.fromJson(Map<String, dynamic> value) {
    descricao = '';
    resumo = '';
  }
}
