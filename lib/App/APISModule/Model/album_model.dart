class AlbumModel {
  int userId;
  int id;
  String title;

  AlbumModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory AlbumModel.fromJson(Map<String, dynamic> json) => AlbumModel(
        userId: json["userId"] ?? 0,
        id: json["id"] ?? 0,
        title: json["title"] ?? "",
      );

  static List<AlbumModel> fromJsonToList(List<dynamic> jsonList) {
    return jsonList.map((item) => AlbumModel.fromJson(item)).toList();
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
      };
}
