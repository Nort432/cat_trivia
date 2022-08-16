import 'package:cat_trivia/src/features/fact/data/tables/fact_table.dart';
import 'package:cat_trivia/src/features/fact/data/tables/status_table.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class AppHive {
  static late String path;

  static Future initial() async {
    final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
    path = '${appDocumentDir.path}/cache_vision_it';

    Hive.init(path);
    Hive.registerAdapter(FactTableAdapter());
    Hive.registerAdapter(StatusTableAdapter());
  }
}
