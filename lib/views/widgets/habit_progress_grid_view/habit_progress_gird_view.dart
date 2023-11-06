import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/responsive_layout/responsive_layout.dart';

class HabitProgressGridView extends StatelessWidget {
  const HabitProgressGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: AppStyles.progressText.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ResponsiveLayout.mobileView(context) ? 2 : 4,
            crossAxisSpacing: 19,
            mainAxisSpacing: 19),
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 4 / 2,
            child: Container(
              height: 235,
              decoration: BoxDecoration(
                  color: AppStyles.whiteColor,
                  borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                "assets/images/progress_indicator.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Image.asset(AppStyles.imagesPath[index]),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Text(
                            AppStyles.progressText[index],
                            style: AppStyles.regularSubtitleSmallSizeBlue,
                          ),
                          Text(
                            AppStyles.progressPercent[index],
                            style: AppStyles.regularSubtitleSmallSizeBlue,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
