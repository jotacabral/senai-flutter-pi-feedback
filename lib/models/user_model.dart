import 'package:senai_feedback/models/address.dart';

class UserModel {
  int? id;
  String? nome;
  String? email;
  String? cpfCnpj;
  String? telefone;
  String? anotacao;
  String? senha;
  String? dataNascimento;
  String? dataCadastro;
  Null? dataBloqueio;
  Null? dataExclusao;
  Null? dataInativacao;
  String? status;
  String? tipo;
  List<Null>? feedbacks;
  Endereco? endereco;
  Departamento? departamento;
  Departamento? cargo;
  Departamento? unidade;
  List? perfils;

  UserModel(
      {this.id,
      this.nome,
      this.email,
      this.cpfCnpj,
      this.telefone,
      this.anotacao,
      this.senha,
      this.dataNascimento,
      this.dataCadastro,
      this.dataBloqueio,
      this.dataExclusao,
      this.dataInativacao,
      this.status,
      this.tipo,
      this.feedbacks,
      this.endereco,
      this.departamento,
      this.cargo,
      this.unidade,
      this.perfils});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    email = json['email'];
    cpfCnpj = json['cpfCnpj'];
    telefone = json['telefone'];
    anotacao = json['anotacao'];
    senha = json['senha'];
    dataNascimento = json['dataNascimento'];
    dataCadastro = json['dataCadastro'];
    dataBloqueio = json['dataBloqueio'];
    dataExclusao = json['dataExclusao'];
    dataInativacao = json['dataInativacao'];
    status = json['status'];
    tipo = json['tipo'];
    if (json['feedbacks'] != null) {
      feedbacks = <Null>[];
      json['feedbacks'].forEach((v) {
        feedbacks!.add(null);
      });
    }
    endereco = json['endereco'] != null
        ? new Endereco.fromJson(json['endereco'])
        : null;
    departamento = json['departamento'] != null
        ? new Departamento.fromJson(json['departamento'])
        : null;
    cargo =
        json['cargo'] != null ? new Departamento.fromJson(json['cargo']) : null;
    unidade = json['unidade'] != null
        ? new Departamento.fromJson(json['unidade'])
        : null;
    if (json['perfils'] != null) {
      perfils = <Null>[];
      json['perfils'].forEach((v) {
        perfils!.add(null);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['cpfCnpj'] = this.cpfCnpj;
    data['telefone'] = this.telefone;
    data['anotacao'] = this.anotacao;
    data['senha'] = this.senha;
    data['dataNascimento'] = this.dataNascimento;
    data['dataCadastro'] = this.dataCadastro;
    data['dataBloqueio'] = this.dataBloqueio;
    data['dataExclusao'] = this.dataExclusao;
    data['dataInativacao'] = this.dataInativacao;
    data['status'] = this.status;
    data['tipo'] = this.tipo;
    if (this.feedbacks != null) {
      data['feedbacks'] = [];
    }
    if (this.endereco != null) {
      data['endereco'] = this.endereco!.toJson();
    }
    if (this.departamento != null) {
      data['departamento'] = this.departamento!.toJson();
    }
    if (this.cargo != null) {
      data['cargo'] = this.cargo!.toJson();
    }
    if (this.unidade != null) {
      data['unidade'] = this.unidade!.toJson();
    }
    if (this.perfils != null) {
      data['perfils'] = this.perfils!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Departamento {
  int? id;
  String? descricao;
  List? pessoas;

  Departamento({this.id, this.descricao, this.pessoas});

  Departamento.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    descricao = json['descricao'];
    if (json['pessoas'] != null) {
      pessoas = <Null>[];
      json['pessoas'].forEach((v) {
        pessoas!.add(null);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['descricao'] = this.descricao;
    if (this.pessoas != null) {
      data['pessoas'] = this.pessoas!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
