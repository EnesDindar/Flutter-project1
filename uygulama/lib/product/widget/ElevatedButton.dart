import 'package:flutter/material.dart';
import 'package:uygulama/view/homePage.dart';
import 'package:uygulama/view/secondPage.dart';

class ElevatedButton1 extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const ElevatedButton1({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width = 300.0,
    this.height = 44.0,
    this.gradient = const LinearGradient(colors: [ColorsItems.indigo, ColorsItems.cyan]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(5);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
        boxShadow: const [
          BoxShadow(
            color: ColorsItems.black,
            blurRadius: 20,
            offset: Offset(0, 1), // Shadow position
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsItems.transparent,
          shadowColor: ColorsItems.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
