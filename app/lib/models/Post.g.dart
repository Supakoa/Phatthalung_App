// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
      json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      json['name'] as String,
      json['banner'] as String,
      json['detail'] as String,
      json['image'] as String,
      json['timestamp'] as String);
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'name': instance.name,
      'banner': instance.banner,
      'detail': instance.detail,
      'image': instance.image,
      'timestamp': instance.timestamp,
      'location': instance.location?.toJson()
    };
