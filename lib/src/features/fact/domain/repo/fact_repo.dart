import 'package:cat_trivia/src/core/states/data_state.dart';
import 'package:cat_trivia/src/features/fact/domain/entities/fact_entity.dart';

abstract class FactRepo {
  Future<DataState<List<FactEntity>>> fetchFactsR();
  Future<DataState<List<FactEntity>>> fetchFactsL();
}