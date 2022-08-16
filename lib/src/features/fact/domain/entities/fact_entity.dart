import 'package:cat_trivia/src/features/fact/domain/entities/status_entity.dart';
import 'package:equatable/equatable.dart';

class FactEntity extends Equatable {
  const FactEntity({
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
  });

  final StatusEntity status;
  final String id;
  final String user;
  final String text;
  final String source;
  final String updatedAt;
  final String type;
  final String createdAt;
  final bool deleted;
  final bool used;

  @override
  List<Object?> get props => [
        status,
        id,
        user,
        text,
        source,
        updatedAt,
        type,
        createdAt,
        deleted,
        used,
      ];
}
