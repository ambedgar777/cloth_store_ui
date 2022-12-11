import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Category_TagsBar extends StatefulWidget {
  const Category_TagsBar({
    Key? key,
  }) : super(key: key);

  @override
  State<Category_TagsBar> createState() => _Category_TagsBarState();
}

class _Category_TagsBarState extends State<Category_TagsBar> {
  List<String> categories = ['Dresses', 'Bags', 'Shirts', 'FW2022', 'Tops', 'Pants'];
  int selectedIndex = 0;
  Color textColour = Colors.white;
  Color activeTextColor = Colors.black;
  Color activeBoxColour = Color(0xFFB2EE32);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Container(
          height: 60,
          width: 80,
          decoration: BoxDecoration(
            color: selectedIndex == index ? Color(0xFFB2EE32) : Colors.grey.shade900,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              categories[index],
              style: GoogleFonts.montserrat(
                fontSize: 18,
                color: selectedIndex == index ? activeTextColor : textColour,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
