import 'package:flutter/material.dart';
import 'package:fooddelivery_tutorial/home/food_page_body.dart';
import 'package:fooddelivery_tutorial/utils/colors.dart';
import 'package:fooddelivery_tutorial/utils/dimensions.dart';
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
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
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
                        width: Dimensions.height45,
                        height: Dimensions.height45,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: Dimensions.iconSize24,
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius15),
                            color: AppColors.mainColor)),
                  ),
                ],
              ),
            ),
          ),

          // SHowing the Body
          const Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          ))
        ],
      ),
    );
  }
}
