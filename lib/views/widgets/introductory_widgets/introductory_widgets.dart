import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';

// ignore: must_be_immutable
class IntroductoryWidget extends StatefulWidget {
  var image;
  var headline;
  var description;
  IntroductoryWidget(
      {super.key,
      required this.description,
      required this.headline,
      required this.image});

  @override
  State<IntroductoryWidget> createState() => _IntroductoryWidgetState();
}

class _IntroductoryWidgetState extends State<IntroductoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 350,
            width: double.infinity,
            child: Image.asset(
              widget.image,
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.headline,
                  style: AppStyles.headlineBold,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.9),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      widget.description,
                      style: AppStyles.regularSmallBodyBlack,
                    ),
                  ),
                )
              ],
            ),
          )
        ]);
  }
}
