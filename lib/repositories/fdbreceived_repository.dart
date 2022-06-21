import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:senai_feedback/models/feedback.dart';
import 'package:senai_feedback/shared/const.dart';

class FdbreceivedRepository {
  Future<List<FeedbackModel>> fetchAll(String urldata) async {
    final String url = Const.baseUrl + urldata;
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List jsonDec = json.decode(utf8.decode(response.bodyBytes));

      return jsonDec
          .map<FeedbackModel>((value) => FeedbackModel.fromJson(value))
          .toList();
    }

    if (response.statusCode != 200) {
      throw Exception("Não foi encontrado nenhum feedback");
    }

    return [];
  }
}
