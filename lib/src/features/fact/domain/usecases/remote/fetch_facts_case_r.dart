import 'package:cat_trivia/src/core/params/no_params.dart';
import 'package:cat_trivia/src/core/states/data_state.dart';
import 'package:cat_trivia/src/core/usecases/use_case.dart';
import 'package:cat_trivia/src/features/fact/domain/entities/fact_entity.dart';
import 'package:cat_trivia/src/features/fact/domain/repo/fact_repo.dart';

class FetchFactsCaseR extends UseCase<DataState<List<FactEntity>>, NoParams> {
  FetchFactsCaseR(this.repo);

  final FactRepo repo;

  @override
  Future<DataState<List<FactEntity>>> call(NoParams params) async {
    return await repo.fetchFactsR();
  }
}
