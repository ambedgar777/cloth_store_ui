import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 30,
            child: Image.asset('assets/icons/menu.png', color: Colors.white,),
          ),
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
        ],
      ),
    );
  }
}
