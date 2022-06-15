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
      return jsonDec.map<Feedback>;
    }

    if (response.statusCode != 200)
      throw Exception("Não foi encontrado nenhum feedback");
  }
}

/* 

Future<List<Result>> _getData(UrlToUse) async {
var response = await http.get(_baseurl + UrlToUse + 'api_key=' + _key + '&language=' + _lang);
data = json.decode(response.body);


List<Result> realdata = List<Result>.from(data).map((x) => Result.fromJson(x)));

return realdata;
}


*/