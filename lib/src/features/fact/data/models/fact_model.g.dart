// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FactModel _$FactModelFromJson(Map<String, dynamic> json) => FactModel(
      status: StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      id: json['_id'] as String,
      user: json['user'] as String,
      text: json['text'] as String,
      source: json['source'] as String,
      updatedAt: json['updatedAt'] as String,
      type: json['type'] as String,
      createdAt: json['createdAt'] as String,
      deleted: json['deleted'] as bool,
      used: json['used'] as bool,
    );

Map<String, dynamic> _$FactModelToJson(FactModel instance) => <String, dynamic>{
      'status': instance.status,
      '_id': instance.id,
      'user': instance.user,
      'text': instance.text,
      'source': instance.source,
      'updatedAt': instance.updatedAt,
      'type': instance.type,
      'createdAt': instance.createdAt,
      'deleted': instance.deleted,
      'used': instance.used,
    };
