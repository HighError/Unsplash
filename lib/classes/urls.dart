import 'package:json_annotation/json_annotation.dart';

part 'urls.g.dart';

@JsonSerializable()
class Urls{
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  Urls({this.raw, this.full, this.regular, this.small, this.thumb, this.smallS3});

  factory Urls.fromJson(Map<String, dynamic> data) => _$UrlsFromJson(data);

  Map<String,dynamic> toJson() => _$UrlsToJson(this);
}