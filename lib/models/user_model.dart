class UserModel {
  int? id;
  String? nome;
  String? email;
  String? cpfCnpj;
  String? telefone;

  UserModel({
    this.id,
    this.nome,
    this.email,
    this.cpfCnpj,
    this.telefone,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    email = json['email'];
    cpfCnpj = json['cpfCnpj'];
    telefone = json['telefone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['cpfCnpj'] = this.cpfCnpj;
    data['telefone'] = this.telefone;
    return data;
  }
}
