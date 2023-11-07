import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatelessWidget {
  TextEditingController controller;
  double? height;
  double? width;
  String? hintText;
  int? color;
  TextStyle? controllerStyle;
  TextStyle? hintStyle;
  double? borderRadius;
  TextFormFieldWidget(
      {super.key,
      this.height,
      this.width,
      this.borderRadius,
      this.color,
      this.controllerStyle,
     required this.controller,
      this.hintText,
      this.hintStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 0.0,
      width: width ?? 0.0,
      decoration: BoxDecoration(
          color: Color(color ?? 0),
          borderRadius: BorderRadius.circular(borderRadius ?? 0.0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20),
        child: TextFormField(
          style: controllerStyle,
          controller: controller,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText ?? "",
              hintStyle: hintStyle),
        ),
      ),
    );
  }
}
