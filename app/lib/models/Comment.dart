
import 'package:app/models/Post.dart';
import 'package:app/models/User.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Comment.g.dart';

@JsonSerializable(explicitToJson: true)

class Comment {
  Post post;
  User user;
  String detail, timestamp;

  Comment(this.post, this.user, this.detail, this.timestamp);

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}