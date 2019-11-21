// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Like.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Like _$LikeFromJson(Map<String, dynamic> json) {
  return Like(
      json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      json['detail'] as String);
}

Map<String, dynamic> _$LikeToJson(Like instance) => <String, dynamic>{
      'post': instance.post?.toJson(),
      'user': instance.user?.toJson(),
      'detail': instance.detail
    };
