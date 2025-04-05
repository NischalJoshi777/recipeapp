// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailImpl _$$UserDetailImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailImpl(
      email: json['email'] as String,
      photoUrl: json['photoUrl'] as String?,
      username: json['username'] as String,
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$UserDetailImplToJson(_$UserDetailImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'username': instance.username,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
