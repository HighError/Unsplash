import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User{
  String? id;
  String? username;
  String? name;
  String? firstName;
  String? lastName;

  User({this.id, this.username, this.name, this.firstName, this.lastName});

  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  Map<String,dynamic> toJson() => _$UserToJson(this);
}