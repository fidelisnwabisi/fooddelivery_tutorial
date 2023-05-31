import 'package:flutter/material.dart';

class MainFoodPaage extends StatefulWidget {
  const MainFoodPaage({super.key});

  @override
  State<MainFoodPaage> createState() => _MainFoodPaageState();
}

class _MainFoodPaageState extends State<MainFoodPaage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          children: [
            const Column(
              children: [
                Text("Country"),
                Text("City"),
              ],
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
