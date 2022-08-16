
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fact_history_event.dart';
part 'fact_history_state.dart';

class FactHistoryBloc extends Bloc<FactHistoryEvent, FactHistoryState> {
  FactHistoryBloc() : super(const FactHistoryLoaded());
}
