class WebToonModel {
  late final String title, thumb, id;
  // you can just create a normal constructor with {}
  WebToonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
