import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';

// ignore: must_be_immutable
class ReusableListTileContainer extends StatelessWidget {
  String title;
  String description;
  dynamic image;
  double? width;
  double height;
  double logoHeight;
  double logoWidth;
  double? fontSizeTitle;
  FontWeight? fontWeightTile;
  double? fontSizeSubtitle;
  FontWeight? fontWeightSubtitle;
  int? subTitleColor;
  int? titleColor;
  int? color;
  ReusableListTileContainer(
      {super.key,
      required this.description,
      required this.image,
      required this.title,
      this.subTitleColor,
      this.titleColor,
      this.width,
      required this.height,
      required this.logoHeight,
      required this.logoWidth,
      this.fontSizeSubtitle,
      this.fontSizeTitle,
      this.fontWeightSubtitle,
      this.fontWeightTile,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: width ?? 0.0,
        height: height,
        decoration: BoxDecoration(
            color: Color(color ?? 0), borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(top: 7, bottom: 20, left: 5),
          child: ListTile(
            title: Text(
              title,
              style: GoogleFonts.rubik(
                  fontWeight: fontWeightTile,
                  fontSize: fontSizeTitle ?? 0,
                  color: Color(titleColor ?? 0)),
            ),
            subtitle: Text(
              description,
              style: GoogleFonts.rubik(
                  fontWeight: fontWeightSubtitle,
                  fontSize: fontSizeSubtitle ?? 0,
                  color: Color(subTitleColor ?? 0)),
            ),
            leading: Container(
                height: logoHeight,
                width: logoWidth,
                decoration: const BoxDecoration(),
                child: Image.asset(image)),
          ),
        ),
      ),
    );
  }
}
