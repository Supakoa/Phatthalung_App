
import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';

@JsonSerializable()

class User {
  String email, password, firstName, lastName, gender, timeStamp;
  int age;

  User(this.email, this.password, this.firstName, this.lastName, this.age, this.gender, this.timeStamp);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}