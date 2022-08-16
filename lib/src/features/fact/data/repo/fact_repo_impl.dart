import 'dart:io';

import 'package:cat_trivia/src/core/states/data_state.dart';
import 'package:cat_trivia/src/features/fact/data/models/fact_model.dart';
import 'package:cat_trivia/src/features/fact/data/sources/local/fact_local_source.dart';
import 'package:cat_trivia/src/features/fact/data/sources/remote/fact_source.dart';
import 'package:cat_trivia/src/features/fact/data/sources/remote/image_source.dart';
import 'package:cat_trivia/src/features/fact/data/tables/fact_table.dart';
import 'package:cat_trivia/src/features/fact/domain/entities/fact_entity.dart';
import 'package:cat_trivia/src/features/fact/domain/repo/fact_repo.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

class FactRepoImpl implements FactRepo {
  const FactRepoImpl({
    required this.factSource,
    required this.imageSource,
    required this.factLocalSource,
  });

  final FactSource factSource;
  final ImageSource imageSource;
  final FactLocalSource factLocalSource;

  @override
  Future<DataState<List<FactEntity>>> fetchFactsR() async {
    try {
      final HttpResponse<List<FactModel>> hpTrains =
          await factSource.fetchFacts();

      if (hpTrains.response.statusCode == HttpStatus.ok) {
        final List<FactEntity> factsEntity = hpTrains.data;
        // save
        final List<FactTable> factsTable =
            factsEntity.map((e) => FactTable.fromFactEntity(e)).toList();
        final DataState dsSave = await factLocalSource.saveFactsL(factsTable);

        if (dsSave is DataSuccess) {
          return DataSuccess(factsTable);
        }
        if (dsSave is DataFailed) {
          return DataFailed(dsSave.messageError);
        }

        return const DataNull();
      }

      throw DioError(
        requestOptions: hpTrains.response.requestOptions,
        error: hpTrains.response.statusMessage,
        response: hpTrains.response,
        type: DioErrorType.response,
      );
    } catch (e, stacktrace) {
      String errorMessage = DataFailed.doMessageError(e, stacktrace);
      return DataFailed(errorMessage);
    }
  }

  @override
  Future<DataState<List<FactEntity>>> fetchFactsL() {
    // TODO: implement fetchFactsL
    throw UnimplementedError();
  }

// @override
// Future<DataState<List<TrainEntity>>> fetchTrainsLR() async {
//   try {
//     final dsTrainsLocal = await dashboardLocal.fetchTrainsLocal();
//
//     if (dsTrainsLocal is DataSuccess) {
//       final List<TrainTable> trains = dsTrainsLocal.data as List<TrainTable>;
//       return DataSuccess(trains);
//     }
//     if (dsTrainsLocal is DataNull) {
//       final DataState<List<TrainEntity>> ds = await fetchTrainsR();
//       return ds;
//     }
//     if (dsTrainsLocal is DataFailed) {
//       return DataFailed(dsTrainsLocal.messageError);
//     }
//
//     return const DataNull();
//   } catch (e) {
//     String errorMessage = DataFailed.doMessageError(e, StackTrace.current);
//     return DataFailed(errorMessage);
//   }
// }

}
