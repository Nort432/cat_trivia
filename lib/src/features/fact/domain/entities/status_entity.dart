import 'package:equatable/equatable.dart';

class StatusEntity extends Equatable {
  const StatusEntity({
    required this.verified,
    required this.feedback,
    required this.sentCount,
  });
  final bool verified;
  final String feedback;
  final int sentCount;

  @override
  List<Object?> get props => [verified, feedback, sentCount];
}