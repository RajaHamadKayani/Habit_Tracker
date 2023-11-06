import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
class DailyProgressIconRow extends StatelessWidget {
  const DailyProgressIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: AppStyles.whiteColor,
                        )),
                    InkWell(
                      onTap: () {},
                      child: Image.asset("assets/images/try_free.png"),
                    )
                  ],
                );
  }
}