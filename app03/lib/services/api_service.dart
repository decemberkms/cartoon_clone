import 'dart:convert';

import 'package:app03/models/webtoon_episode_model.dart';
import 'package:app03/models/webtoon_detailed_model.dart';
import 'package:app03/models/webtoon_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebToonModel>> getTodaysToons() async {
    List<WebToonModel> webtooninstances = [];
    //htttp request
    final url = Uri.parse("$baseUrl/$today");

    // Future -> from get()
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // List is returned from jsonDecode
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final toon = WebToonModel.fromJson(webtoon);
        webtooninstances.add(toon);
      }
      return webtooninstances;
    }
    throw Error();
  }

  static Future<WebToonDetailedModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl/$id");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);

      return WebToonDetailedModel.fromJson(webtoon);
    }
    throw Error();
  }

  static Future<List<WebToonEpisodesModel>> getLatestEpisodeById(
      String id) async {
    List<WebToonEpisodesModel> episodesInstances = [];
    final url = Uri.parse("$baseUrl/$id/episodes");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final episodes = jsonDecode(response.body);
      for (var episode in episodes) {
        episodesInstances.add(WebToonEpisodesModel.fromJson(episode));
      }
      return episodesInstances;
    }
    throw Error();
  }
}
