part of 'fact_bloc.dart';

abstract class FactEvent extends Equatable {
  const FactEvent();
}
class FactInitialEvent extends FactEvent {
  const FactInitialEvent() : super();

  @override
  List<Object?> get props => [];
}
class FactAnotherEvent extends FactEvent {
  const FactAnotherEvent() : super();

  @override
  List<Object?> get props => [];
}
class FactHistoryEvent extends FactEvent {
  const FactHistoryEvent() : super();

  @override
  List<Object?> get props => [];
}