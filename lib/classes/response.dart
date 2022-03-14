import 'package:qulisoft/classes/photo.dart';

class Response{
  static int statusCode = 0;
  static String? errorMessage;
  static List<Photo> photos = [];

  static void success(List<Photo> response){
    statusCode = 200;
    errorMessage = null;
    photos = response;
  }

  static void fail(int code, String message){
    statusCode = code;
    errorMessage = message;
    photos = [];
  }
}