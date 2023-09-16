import 'dart:convert';

import 'package:app03/models/webtoon_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  List<WebToonModel> webtooninstances = [];
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebToonModel>> getTodaysToons() async {
    //htttp request
    final url = Uri.parse("$baseUrl/$today");
    // Future -> from get()
    final reponse = await http.get(url);
    if (reponse.statusCode == 200) {
      // List is returned from jsonDecode
      final List<dynamic> webtoons = jsonDecode(reponse.body);
      for (var webtoon in webtoons) {
        final toon = WebToonModel.fromJson(webtoon);
        webtooninstances.add(toon);
        print(webtooninstances);
      }
      return webtooninstances;
    }
    throw Error();
  }
}
