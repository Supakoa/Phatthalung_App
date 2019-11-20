
import 'package:app/models/Location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Post.g.dart';

@JsonSerializable(explicitToJson: true)

class Post {
  String name, banner, detail, image, timestamp;
  Location location;

  Post(this.location, this.name, this.banner, this.detail, this.image, this.timestamp);

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);

}