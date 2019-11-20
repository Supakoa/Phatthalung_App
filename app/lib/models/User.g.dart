// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      json['email'] as String,
      json['password'] as String,
      json['firstName'] as String,
      json['lastName'] as String,
      json['age'] as int,
      json['gender'] as String,
      json['timeStamp'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'timeStamp': instance.timeStamp,
      'age': instance.age
    };
