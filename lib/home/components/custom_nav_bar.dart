import 'package:cloth_store_ui/AllCategories/all_categories.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: Colors.grey.shade900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildGestureDetector('assets/icons/home.png', () {}),
          buildGestureDetector('assets/icons/categories.png', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AllCategories(),),);
          }),
          buildGestureDetector('assets/icons/bag.png', () {}),
          buildGestureDetector('assets/icons/magnifying-glass.png', () {}),
        ],
      ),
    );
  }

  GestureDetector buildGestureDetector(String iconPath, VoidCallback pressed) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        margin: EdgeInsets.all(18),
        height: 25,
        width: 25,
        child: Image.asset(
          iconPath,
          color: Colors.white,
        ),
      ),
    );
  }
}
