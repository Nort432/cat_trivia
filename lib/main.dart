import 'package:cat_trivia/src/config/app_hive/app_hive.dart';
import 'package:cat_trivia/src/config/app_routes/app_route.dart';
import 'package:cat_trivia/src/injector.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //#region HIVE
  await AppHive.initial();
  //#endregion

  //#region GET IT
  await initializeDependencies();
  //#endregion

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute.onGenerateRoute(),
    );
  }
}
