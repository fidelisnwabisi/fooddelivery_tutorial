import 'package:flutter/material.dart';
import 'package:fooddelivery_tutorial/home/food_page_body.dart';
import 'package:fooddelivery_tutorial/utils/colors.dart';
import 'package:fooddelivery_tutorial/widgets/big_text.dart';
import 'package:fooddelivery_tutorial/widgets/small_text.dart';

class MainFoodPaage extends StatefulWidget {
  const MainFoodPaage({super.key});

  @override
  State<MainFoodPaage> createState() => _MainFoodPaageState();
}

class _MainFoodPaageState extends State<MainFoodPaage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Showing the Header
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 45, bottom: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Nigeria",
                        color: AppColors.mainColor,
                      ),
                      const Row(
                        children: [
                          SmallText(text: "Nsugbe", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // SHowing the Body
          const FoodPageBody()
        ],
      ),
    );
  }
}
