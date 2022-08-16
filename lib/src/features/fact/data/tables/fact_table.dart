// ignore_for_file: overridden_fields

import 'package:cat_trivia/src/features/fact/data/tables/status_table.dart';
import 'package:cat_trivia/src/features/fact/domain/entities/fact_entity.dart';
import 'package:hive/hive.dart';

part 'fact_table.g.dart';

@HiveType(typeId: 0)
class FactTable extends FactEntity {
  const FactTable({
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
  @HiveField(0)
  final StatusTable status;
  
  @override
  @HiveField(1)
  final String id;
  
  @override
  @HiveField(2)
  final String user;
  
  @override
  @HiveField(3)
  final String text;
  
  @override
  @HiveField(4)
  final String source;
  
  @override
  @HiveField(5)
  final String updatedAt;
  
  @override
  @HiveField(6)
  final String type;
  
  @override
  @HiveField(7)
  final String createdAt;
  
  @override
  @HiveField(8)
  final bool deleted;
  
  @override
  @HiveField(9)
  final bool used;

  factory FactTable.fromFactEntity(FactEntity fact) {
    return FactTable(
      status: StatusTable.fromStatusEntity(fact.status),
      id: fact.id,
      user: fact.user,
      text: fact.text,
      source: fact.source,
      updatedAt: fact.updatedAt,
      type: fact.type,
      createdAt: fact.createdAt,
      deleted: fact.deleted,
      used: fact.used,
    );
  }
}
