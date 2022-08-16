// ignore_for_file: overridden_fields

import 'package:cat_trivia/src/features/fact/domain/entities/status_entity.dart';
import 'package:hive/hive.dart';

part 'status_table.g.dart';

@HiveType(typeId: 1)
class StatusTable extends StatusEntity {
  const StatusTable({
    required this.verified,
    required this.feedback,
    required this.sentCount,
  }) : super(
    verified: verified,
    feedback: feedback,
    sentCount: sentCount,
  );

  @override
  @HiveField(0)
  final bool verified;

  @override
  @HiveField(1)
  final String feedback;

  @override
  @HiveField(2)
  final int sentCount;

  factory StatusTable.fromStatusEntity(StatusEntity status) {
    return StatusTable(
      verified: status.verified,
      feedback: status.feedback,
      sentCount: status.sentCount,
    );
  }
}