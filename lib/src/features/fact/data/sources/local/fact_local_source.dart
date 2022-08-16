import 'package:cat_trivia/src/core/states/data_state.dart';
import 'package:cat_trivia/src/features/fact/data/tables/fact_table.dart';

abstract class FactLocalSource {
  Future<DataState<List<FactTable>>> fetchFactsL();
  Future<DataState> saveFactsL(List<FactTable> facts);
}
