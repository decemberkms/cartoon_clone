class WebToonEpisodesModel {
  final String id, title, rating, date;

  WebToonEpisodesModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        rating = json['rating'],
        date = json['date'];
}
