
import 'package:cat_trivia/src/core/states/data_state.dart';
import 'package:cat_trivia/src/features/fact/data/sources/local/fact_local_source.dart';
import 'package:cat_trivia/src/features/fact/data/tables/fact_table.dart';
import 'package:hive/hive.dart';

class FactLocalImpl extends FactLocalSource {
  final String factsOpen = 'factsOpen';
  final String factsGet = 'factsGet';

  @override
  Future<DataState<List<FactTable>>> fetchFactsL() async {
    try {
      final Box<List<FactTable>> trainsBox = await Hive.openBox<List<FactTable>>(factsOpen);
      final List<FactTable>? facts = trainsBox.get(factsGet);

      if (facts != null) {
        // final List<FactEntity> facts = trainsDynamic.map<TrainTable>((e) => e).toList();
        return DataSuccess(facts);
      }

      return const DataNull();
    } catch (e) {
      String errorMessage = DataFailed.doMessageError(e, StackTrace.current);
      return DataFailed(errorMessage);
    }
  }

  @override
  Future<DataState> saveFactsL(List<FactTable> facts) async {
    try {
      final Box<List<FactTable>> trainsBox = await Hive.openBox<List<FactTable>>(factsOpen);
      await trainsBox.add(facts);
      return const DataSuccess(null);
    } catch (e) {
      String errorMessage = DataFailed.doMessageError(e, StackTrace.current);
      return DataFailed(errorMessage);
    }
  }
}
