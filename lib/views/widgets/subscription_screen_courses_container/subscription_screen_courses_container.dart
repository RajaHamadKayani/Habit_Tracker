import 'package:flutter/material.dart';
import 'package:habot_tracker/constants/app_styles/app_styles.dart';
import 'package:habot_tracker/views/widgets/container_widget/container_widget.dart';

// ignore: must_be_immutable
class SubscriptionScreenCoursesContainer extends StatelessWidget {
  double? width;
  SubscriptionScreenCoursesContainer({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      width: width ?? 0.0,
      height: 180,
      color: 0xffffffff,
      borderRadius: 10,
      widget: Padding(
        padding: const EdgeInsets.only(top: 26, left: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Unlock Monumental Habits",
                style: AppStyles.smallHeadlineMediumBlack,
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContainerWidget(
                    height: 22,
                    width: 22,
                    borderRadius: 100,
                    widget: const CircleAvatar(
                      backgroundColor: Color(0xff7472FF),
                      child: Center(
                        child: Icon(
                          Icons.done,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Unlimited habits",
                    style: AppStyles.smallHeadlineMediumBlack,
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContainerWidget(
                    height: 22,
                    width: 22,
                    borderRadius: 100,
                    widget: const CircleAvatar(
                      backgroundColor: Color(0xff7472FF),
                      child: Center(
                        child: Icon(
                          Icons.done,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Unlimited habits",
                    style: AppStyles.smallHeadlineMediumBlack,
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContainerWidget(
                    height: 22,
                    width: 22,
                    borderRadius: 100,
                    widget: const CircleAvatar(
                      backgroundColor: Color(0xff7472FF),
                      child: Center(
                        child: Icon(
                          Icons.done,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Unlimited habits",
                    style: AppStyles.smallHeadlineMediumBlack,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
