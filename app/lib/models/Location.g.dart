// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
      json['name'] as String,
      json['image'] as String,
      json['latitude'] as String,
      json['longtitude'] as String,
      json['timestamp'] as String);
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'latitude': instance.latitude,
      'longtitude': instance.longtitude,
      'timestamp': instance.timestamp
    };
