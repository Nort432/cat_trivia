import 'package:cat_trivia/src/config/app_colors/app_color.dart';
import 'package:flutter/cupertino.dart';

class MyLoadingWidget extends StatelessWidget {
  const MyLoadingWidget({this.isBusy = true, Key? key}) : super(key: key);

  final bool isBusy;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isBusy,
      child: const Center(
        child: CupertinoActivityIndicator(
          color: AppColors.loading,
          radius: 14.0,
        ),
      ),
    );
  }
}
