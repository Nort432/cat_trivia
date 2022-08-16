// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusModel _$StatusModelFromJson(Map<String, dynamic> json) => StatusModel(
      verified: json['verified'] as bool,
      feedback: json['feedback'] as String,
      sentCount: json['sentCount'] as int,
    );

Map<String, dynamic> _$StatusModelToJson(StatusModel instance) =>
    <String, dynamic>{
      'verified': instance.verified,
      'feedback': instance.feedback,
      'sentCount': instance.sentCount,
    };
