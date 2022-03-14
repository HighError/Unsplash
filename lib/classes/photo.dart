import 'package:json_annotation/json_annotation.dart';
import 'package:qulisoft/classes/urls.dart';
import 'package:qulisoft/classes/user.dart';

part 'photo.g.dart';

@JsonSerializable(explicitToJson: true)
class Photo{
  String? id;
  int? width;
  int? height;
  Urls? urls;
  User? user;

  Photo({this.id, this.width, this.height, this.urls, this.user});

  factory Photo.fromJson(Map<String, dynamic> data) => _$PhotoFromJson(data);

  Map<String,dynamic> toJson() => _$PhotoToJson(this);
}