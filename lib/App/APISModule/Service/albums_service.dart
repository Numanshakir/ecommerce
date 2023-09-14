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

  // createAlbum() async {
  //   http.Response response = await http.post(
  //     Uri.parse('http://54.251.18.92/api/v1/auth/login'),
  //     headers: <String, String>{
  //       'Accept': '*/*',
  //       'Content-Type': 'application/json',
  //       // 'Authorization': 'Bearer YOUR ACCESS TOKEN HERE',
  //     },
  //     body: jsonEncode(<String, dynamic>{
  //       "emailAddress": "doctor@gmail.com",
  //       "password": "12345678",
  //       "type": "consultant"
  //     }),
  //   );
  //   print(response.statusCode);
  //   print(jsonDecode(response.body));
  //   // if (response.statusCode == 200) {
  //   //   print(jsonDecode(response.body));
  //   // }
  // }
  createAlbum() async {
    http.Response response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': "Testing in career",
      }),
    );
    print(response.statusCode);
    print(jsonDecode(response.body));
    // if (response.statusCode == 200) {
    //   print(jsonDecode(response.body));
    // }
  }
}
