import 'package:flutter/material.dart';
import 'package:workshop_task/widgets/w_profile_image.dart';
import '../config/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              MyColors.gradientStart,
              MyColors.gradientEnd,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).viewPadding.top +
                  12, // StatusBar height
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: MyColors.white,
                  ),
                ),
                WProfileImage(
                  url: "assets/images/profile.jpg",
                ),
              ],
            ),
            Text(
              "Hi Ghulam",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: MyColors.white,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "6 Tasks are pending",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: MyColors.textColor,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                color: MyColors.cardColor,
                boxShadow: [
                  BoxShadow(
                    color: MyColors.cardShadowColor.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 15,
                  )
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mobile App Design",
                    style: TextStyle(
                      color: MyColors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Mike and Anita",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: MyColors.textColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          WProfileImage(
                            url: "assets/images/ketmonoy.jpg",
                          ),
                          Positioned(
                              left: 30,
                              child: WProfileImage(
                                url: "assets/images/qoysintosh.jpg",
                              )),
                        ],
                      ),
                      Text(
                        "Now",
                        style: TextStyle(
                          color: MyColors.textColor,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
