import 'package:cloth_store_ui/home_page.dart';
import 'package:cloth_store_ui/screens/category_screen/catgories.dart';
import 'package:cloth_store_ui/screens/shop_screen.dart';
import 'package:cloth_store_ui/search_screen.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  List<String> iconPath = [
    'assets/icons/home.png',
    'assets/icons/categories.png',
    'assets/icons/bag.png',
    'assets/icons/magnifying-glass.png',
  ];

  List<dynamic> pages = [
    HomePage(),
    Categories(),
    ShopCategory(),
    SearchScreen(),
  ];

  int selectedIndex = 0;
  Color activeColor = const Color(0xFFB2EE32);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        itemCount: iconPath.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) => buildNavContent(index),
      ),
    );
  }

  Widget buildNavContent(int index) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            selectedIndex = index;
            if (selectedIndex == index) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => pages[index]));
            }
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: SizedBox(
          height: 80,
          child: Image.asset(
            iconPath[index],
            color: selectedIndex == index ? activeColor : Colors.white,
            width: 30,
            height: 30,
          ),
        ),
      ),
    );
  }
}
