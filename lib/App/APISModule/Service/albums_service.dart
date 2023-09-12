import 'dart:convert';

import 'package:ecommerce/App/APISModule/Model/album_model.dart';
import 'package:http/http.dart' as http;

mixin AlbumRepo {
  Future<List<AlbumModel>> fetchAlbum() async {
    List<AlbumModel> albums = [];

    http.Response response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      albums = AlbumModel.fromJsonToList(data);
    }

    return albums;
  }
}
