import 'package:cat_trivia/src/config/app_colors/app_color.dart';
import 'package:flutter/material.dart';

class MyRoundedContainer extends StatelessWidget {
  const MyRoundedContainer({
    required this.child,
    this.margin,
    this.padding,
    this.color,
    this.width,
    this.height,
    this.alignment,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? color;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;
  final void Function()? onTap;

  final EdgeInsets _margin = EdgeInsets.zero;
  final EdgeInsets _padding = const EdgeInsets.all(10);
  final BorderRadius _borderRadius =
  const BorderRadius.all(Radius.circular(15));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: alignment,
        height: height,
        width: width,
        margin: margin ?? _margin,
        padding: padding ?? _padding,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0.1,
              blurRadius: 0.1,
              blurStyle: BlurStyle.normal,
              offset: const Offset(4, 7), // changes position of shadow
            ),
          ],
          color: color ?? AppColors.container,
          borderRadius: _borderRadius,
        ),
        // decoration: AppStyles.roundedDecor,
        child: child,
      ),
    );
  }
}