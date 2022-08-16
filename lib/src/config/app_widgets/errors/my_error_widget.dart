import 'package:cat_trivia/src/config/app_widgets/containers/my_rounded_container.dart';
import 'package:cat_trivia/src/config/app_widgets/pages/my_page.dart';
import 'package:flutter/material.dart';

class MyErrorWidget extends StatelessWidget {
  const MyErrorWidget(this.messageError, {Key? key}) : super(key: key);

  final String messageError;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: MyPage(
          child: SingleChildScrollView(
            child: MyRoundedContainer(
              child: Text(
                messageError,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
