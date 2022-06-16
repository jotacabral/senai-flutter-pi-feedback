import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:senai_feedback/models/feedback.dart';
import 'package:senai_feedback/shared/const.dart';

class FdbreceivedRepository {
  Future<List<Feedback>> fetchAll(int id) async {
    final String url = Const.baseUrl + "feedbacks/$id";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonDec = json.decode(response.body);
      return jsonDec
          .map<Feedback>((value) => Feedback.fromJson(value))
          .toList();
    }

    if (response.statusCode != 200)
      throw Exception("Não foi encontrado nenhum feedback");
    return [];
  }
}
