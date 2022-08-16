import 'package:cat_trivia/src/features/fact/data/repo/fact_repo_impl.dart';
import 'package:cat_trivia/src/features/fact/data/sources/local/fact_local_impl.dart';
import 'package:cat_trivia/src/features/fact/data/sources/local/fact_local_source.dart';
import 'package:cat_trivia/src/features/fact/data/sources/remote/fact_source.dart';
import 'package:cat_trivia/src/features/fact/data/sources/remote/image_source.dart';
import 'package:cat_trivia/src/features/fact/domain/repo/fact_repo.dart';
import 'package:cat_trivia/src/features/fact/domain/usecases/remote/fetch_facts_case_r.dart';
import 'package:cat_trivia/src/features/fact/ui/bloc/fact_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio client
  injector.registerSingleton<Dio>(Dio());

  // Dependencies (Sources)
  //#region WorkOrderPage

  injector.registerSingleton(FactSource(injector()));
  injector.registerSingleton(ImageSource(injector()));
  injector.registerSingleton<FactLocalSource>(FactLocalImpl());
  injector.registerSingleton<FactRepo>(
    FactRepoImpl(
      imageSource: injector(),
      factLocalSource: injector(),
      factSource: injector(),
    ),
  );

  //#endregion

  // UseCases
  //#region Fact
  injector.registerSingleton(FetchFactsCaseR(injector()));
  //#endregion

  //BLoC
  //#region Fact
  injector.registerFactory<FactBloc>(() => FactBloc());
  //#endregion
}
