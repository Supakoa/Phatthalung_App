
import 'package:json_annotation/json_annotation.dart';

part 'Location.g.dart';

@JsonSerializable()

class Location {
  String name, image, latitude, longtitude, timestamp;

  Location(this.name, this.image, this.latitude, this.longtitude, this.timestamp);

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}