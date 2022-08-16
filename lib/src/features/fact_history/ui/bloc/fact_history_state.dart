part of 'fact_history_bloc.dart';

abstract class FactHistoryState extends Equatable {
  const FactHistoryState();
}

class FactHistoryLoading extends FactHistoryState {
  const FactHistoryLoading() : super();

  @override
  List<Object> get props => [];
}

class FactHistoryLoaded extends FactHistoryState {
  const FactHistoryLoaded() : super();

  @override
  List<Object> get props => [];
}

class FactHistoryError extends FactHistoryState {
  const FactHistoryError(this.messageError) : super();

  final String messageError;

  @override
  List<Object> get props => [messageError];
}
