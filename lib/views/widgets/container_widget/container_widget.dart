import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerWidget extends StatelessWidget {
  double? height;
  double? width;
  int? color;
  double? borderRadius;
  Widget? widget;
  ContainerWidget(
      {super.key, this.borderRadius, this.color, this.height, this.width,this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 0.0,
      width: width ?? 0.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
          color: Color(color ?? 0)),
          child: widget,
    );
  }
}
