import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:qulisoft/classes/photo.dart';

import '../classes/response.dart';

class Unsplash {
  static const String apiKey = "LQifozJBEjog6HhhqZwv3IW5ydLvoo8gP2WZeLGjaAE";

  static Future<void> fetchRandomPhotos() async {
    final response = await http.get(Uri.parse(
        "https://api.unsplash.com/photos/random?$apiKey&client_id=$apiKey&count=30"));
    if (response.statusCode == 200){
      Iterable l = json.decode(response.body);
      List<Photo> photo = List<Photo>.from(l.map((e) => Photo.fromJson(e)));
      return Response.success(photo);
    }
    else{
      return Response.fail(response.statusCode, response.body);
    }
  }
}
