import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({
    Key? key,
    required this.child,
    this.margin = const EdgeInsets.only(),
    this.padding = const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 10,
    ),
  }) : super(key: key);

  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      child: child,
    );
  }
}