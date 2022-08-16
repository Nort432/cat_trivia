import 'package:cat_trivia/src/config/app_apis/api_fact.dart';
import 'package:cat_trivia/src/config/app_apis/api_image.dart';
import 'package:cat_trivia/src/config/app_apis/app_api.dart';
import 'package:cat_trivia/src/features/fact/data/models/fact_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'image_source.g.dart';

@RestApi(baseUrl: AppApi.baseUrlImage)
abstract class ImageSource {
  factory ImageSource(Dio dio) {
    return _ImageSource(dio);
  }

  @GET(ApiImage.urlFetchRandomImage)
  Future<HttpResponse<List<FactModel>>> fetchRandomImage();
}
