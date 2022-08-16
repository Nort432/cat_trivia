part of 'fact_bloc.dart';

abstract class FactState extends Equatable {
  const FactState();
}

class FactLoading extends FactState {
  const FactLoading() : super();

  @override
  List<Object> get props => [];
}

class FactLoaded extends FactState {
  const FactLoaded(this.factTemplate) : super();

  final String factTemplate;

  @override
  List<Object> get props => [factTemplate];
}

class FactError extends FactState {
  const FactError(
    this.messageError,
  ) : super();

  final String messageError;

  @override
  List<Object> get props => [messageError];
}
