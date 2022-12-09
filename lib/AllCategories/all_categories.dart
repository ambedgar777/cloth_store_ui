import 'package:flutter/material.dart';

class AllCategories extends StatefulWidget{
  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {

  final Color _selectedColor = Colors.white;

  @override
Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
      child:  GestureDetector(
          onTap: (){
            setState(() {
              if(_selectedColor == Colors.white){
                 _selectedColor == Colors.red;
              }else{
                _selectedColor == Colors.white;
              }
            });
          },
          child: Container(
              height: 40,
              width: 40,
              child: Image.asset('assets/icons/heart.png', color: _selectedColor,)))
      )
    );
  }
}