import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fact_event.dart';

part 'fact_state.dart';

class FactBloc extends Bloc<FactEvent, FactState> {
  FactBloc() : super(const FactLoading()) {
    on<FactInitialEvent>(_initial);
    on<FactAnotherEvent>(_another);
    on<FactHistoryEvent>(_history);
  }

  FutureOr<void> _initial(
    FactEvent event,
    Emitter<FactState> emit,
  ) async {
    return emit(FactLoaded('factTemplate'));
  }

  /// Another fact
  FutureOr<void> _another(FactAnotherEvent event, Emitter<FactState> emit) {}

  /// Fact history
  FutureOr<void> _history(FactHistoryEvent event, Emitter<FactState> emit) {}
}
