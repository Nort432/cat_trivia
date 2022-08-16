// ignore_for_file: overridden_fields

import 'package:cat_trivia/src/features/fact/domain/entities/status_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'status_model.g.dart';

@JsonSerializable()
class StatusModel extends StatusEntity {
  const StatusModel({
    required this.verified,
    required this.feedback,
    required this.sentCount,
  }) : super(
          verified: verified,
          feedback: feedback,
          sentCount: sentCount,
        );

  @override
  final bool verified;

  @override
  final String feedback;

  @override
  final int sentCount;

  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      _$StatusModelFromJson(json);
}
