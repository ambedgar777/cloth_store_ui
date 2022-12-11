import 'package:cloth_store_ui/screens/category_screen/components/category_tags_bar.dart';
import 'package:cloth_store_ui/screens/category_screen/components/staggered_items.dart';
import 'package:cloth_store_ui/screens/category_screen/components/title_and_icon.dart';
import 'package:cloth_store_ui/screens/home_screen/components/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TitleAndIcon(),
              Category_TagsBar(),
              StaggeredItems(),
            ],
          ),
        ),
      ),
    );
  }
}
