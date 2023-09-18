class WebToonDetailedModel {
  late final String title, about, genre, age;

  WebToonDetailedModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        about = json['about'],
        genre = json['genre'],
        age = json['age'];
}
