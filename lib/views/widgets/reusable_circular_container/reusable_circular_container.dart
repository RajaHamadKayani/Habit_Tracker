import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableCircularContainer extends StatelessWidget {
  double? height;
  double? width;
  String? text1;
  String? text2;
  int? bgColor;
  double? borderRadius;
  int? text1Color;
  var fontWeight;
  int? text2Color;
  double? fontSize;
  double? fontSize2;
  var fontWeight2;
  double? sizedBox;

  ReusableCircularContainer({
    Key? key,
    this.height,
    this.width,
    this.text1,
    this.text1Color,
    this.text2,
    this.sizedBox,
    this.text2Color,
    this.fontSize2,
    this.fontWeight2,
    this.bgColor,
    this.borderRadius,
    this.fontWeight,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 0.0,
      width: width ?? 0.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
        color: Color(bgColor ?? 0), // Parse bgColor as an integer
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                text1.toString(),
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color:
                      Color(text1Color ?? 0), // Parse text1Color as an integer
                ),
              ),
            ),
            SizedBox(width: sizedBox ?? 0.0),
            Center(
              child: Text(
                text2.toString(),
                style: TextStyle(
                  fontSize: fontSize2,
                  fontWeight: fontWeight2,
                  color:
                      Color(text2Color ?? 0), // Parse text2Color as an integer
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
