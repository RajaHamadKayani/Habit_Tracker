import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';

class DrawerWidget extends StatelessWidget {
  double? width;
  DrawerWidget({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: width ?? 0,
      decoration: const BoxDecoration(color: AppStyles.whiteColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 98,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                color: Color(0xffA6ADFB)),
            child: Padding(
              padding: const EdgeInsets.only(left: 23, top: 36),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 Day",
                        style: AppStyles.headlineMediumBlack,
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      Text(
                        "Your current streak",
                        style: AppStyles.mediumSmallBodyBlack,
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              child: ListView.builder(
                  itemCount: AppStyles.drawerText.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: ClipRRect(
                        child: Container(
                          height: 52,
                          width: double.infinity,
                          decoration: const BoxDecoration(color: Colors.white),
                          child: Card(
                            child: ListTile(
                              title: Text(
                                AppStyles.drawerText[index],
                                style: AppStyles.mediumSmallBodyBlack,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
