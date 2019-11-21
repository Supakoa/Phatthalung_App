

import 'package:app/models/Post.dart';
import 'package:app/models/User.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Like.g.dart';

@JsonSerializable(explicitToJson: true)

class Like {
  Post post;
  User user;
  String detail;

  Like(this.post, this.user, this.detail);

  factory Like.fromJson(Map<String, dynamic> json) => _$LikeFromJson(json);

  Map<String, dynamic> toJson() => _$LikeToJson(this);
}