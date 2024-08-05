import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/base/res/media.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headLineStyle3
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          // image: NetworkImage()
                          image: AssetImage(AppMedia.logo)
                        )
                      ),
                      // child: const Text("Logo"),
                    )
                  ],
                ),
                const SizedBox(height: 25,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD),
                      ),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xffbfc205),),
                      Text("Search")
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
