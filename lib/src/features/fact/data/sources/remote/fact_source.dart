import 'package:cat_trivia/src/config/app_apis/api_fact.dart';
import 'package:cat_trivia/src/config/app_apis/app_api.dart';
import 'package:cat_trivia/src/features/fact/data/models/fact_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'fact_source.g.dart';

@RestApi(baseUrl: AppApi.baseUrlFact)
abstract class FactSource {
  factory FactSource(Dio dio) {
    return _FactSource(dio);
  }

  @GET(ApiFact.urlFetchFacts)
  Future<HttpResponse<List<FactModel>>> fetchFacts();
}
