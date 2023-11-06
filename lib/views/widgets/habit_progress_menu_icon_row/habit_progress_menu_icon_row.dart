import 'package:flutter/material.dart';
class HabitProgressMenuIconRow extends StatelessWidget {
  const HabitProgressMenuIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    const SizedBox(
                        height: 30,
                        width: 76,
                        child: Image(
                          image: AssetImage("assets/images/try_free.png"),
                          fit: BoxFit.cover,
                        ))
                  ],
                );
  }
}