class Endereco {
  int? id;
  String? logradouro;
  String? cep;
  String? bairro;
  String? cidade;
  String? estado;

  Endereco(
      {this.id,
      this.logradouro,
      this.cep,
      this.bairro,
      this.cidade,
      this.estado});

  Endereco.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logradouro = json['logradouro'];
    cep = json['cep'];
    bairro = json['bairro'];
    cidade = json['cidade'];
    estado = json['estado'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['logradouro'] = this.logradouro;
    data['cep'] = this.cep;
    data['bairro'] = this.bairro;
    data['cidade'] = this.cidade;
    data['estado'] = this.estado;
    return data;
  }
}
