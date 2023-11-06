import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/widgets/reusable_listtile_container/reusable_listtile_container.dart';
class DailyProgressDailyTargetContainer extends StatelessWidget {
  const DailyProgressDailyTargetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppStyles.whiteColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 24, left: 24, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Today Target",
                            style: AppStyles.smallHeadlineBoldBlue,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff92A3FD)),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: AppStyles.whiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 24, left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: ReusableListTileContainer(
                                  color: 0xff4D57C8,
                                  fontSizeSubtitle: 14,
                                  titleColor: 0xffffffff,
                                  subTitleColor: 0xffffffff,
                                  fontSizeTitle: 16,
                                  fontWeightSubtitle: FontWeight.w300,
                                  fontWeightTile: FontWeight.w600,
                                  description: "Water Intake",
                                  image: "assets/images/glass_icon.png",
                                  title: "8L",
                                  height: 72,
                                  logoHeight: 40,
                                  logoWidth: 30)),
                          Expanded(
                              child: ReusableListTileContainer(
                                  fontSizeSubtitle: 14,
                                  titleColor: 0xffffffff,
                                  subTitleColor: 0xffffffff,
                                  fontSizeTitle: 16,
                                  fontWeightSubtitle: FontWeight.w300,
                                  fontWeightTile: FontWeight.w600,
                                  color: 0xff4D57C8,
                                  description: "Foot Steps",
                                  image: "assets/images/boot_icon.png",
                                  title: "2400",
                                  height: 72,
                                  logoHeight: 40,
                                  logoWidth: 30)),
                        ],
                      ),
                    )
                  ],
                ),
              );
  }
}