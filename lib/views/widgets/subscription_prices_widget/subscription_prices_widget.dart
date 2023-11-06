import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';

class SubscriptionPricesWidget extends StatelessWidget {
  const SubscriptionPricesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      height: 190,
      width: double.infinity,
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: ContainerWidget(
              height: double.infinity,
              borderRadius: 10,
              color: 0xffffffff,
              widget: Padding(
                padding:const EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$19.00",
                      style: AppStyles.headlineMediumBlue,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "6 month plan for\n39usd",
                      style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color:const Color(0xff4D57C8)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Monthly",
                      style: AppStyles.headlineMediumBlack,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: ContainerWidget(
              height: double.infinity,
              borderRadius: 10,
              color: 0xffffffff,
              widget: Padding(
                padding:const EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$19.00",
                      style: AppStyles.headlineMediumBlue,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "6 month plan for\n39usd",
                      style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color:const Color(0xff4D57C8)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Monthly",
                      style: AppStyles.headlineMediumBlack,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: ContainerWidget(
              height: double.infinity,
              borderRadius: 10,
              color: 0xffffffff,
              widget: Padding(
                padding:const EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$19.00",
                      style: AppStyles.headlineMediumBlue,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "6 month plan for\n39usd",
                      style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: const Color(0xff4D57C8)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Monthly",
                      style: AppStyles.headlineMediumBlack,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
