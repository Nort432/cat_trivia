// ignore_for_file: overridden_fields

import 'package:cat_trivia/src/features/fact/data/models/status_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cat_trivia/src/features/fact/domain/entities/fact_entity.dart';

part 'fact_model.g.dart';

@JsonSerializable()
class FactModel extends FactEntity {
  const FactModel({
    required this.status,
    required this.id,
    required this.user,
    required this.text,
    required this.source,
    required this.updatedAt,
    required this.type,
    required this.createdAt,
    required this.deleted,
    required this.used,
  }) : super(
          status: status,
          id: id,
          user: user,
          text: text,
          source: source,
          updatedAt: updatedAt,
          type: type,
          createdAt: createdAt,
          deleted: deleted,
          used: used,
        );

  @override
  final StatusModel status;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String user;
  @override
  final String text;
  @override
  final String source;
  @override
  final String updatedAt;
  @override
  final String type;
  @override
  final String createdAt;
  @override
  final bool deleted;
  @override
  final bool used;

  factory FactModel.fromJson(Map<String, dynamic> json) =>
      _$FactModelFromJson(json);
}
