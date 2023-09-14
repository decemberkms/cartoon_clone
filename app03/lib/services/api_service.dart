import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse("$baseUrl/$today");
    final reponse = await http.get(url);
    if (reponse.statusCode == 200) {
      print(reponse.body);
      return;
    }
    throw Error();
  }
}
