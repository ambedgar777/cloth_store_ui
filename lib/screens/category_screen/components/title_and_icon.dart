import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleAndIcon extends StatelessWidget {
  const TitleAndIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 25,
              width: 25,
              child: Image.asset(
                'assets/icons/arrow.png',
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'Top Sales',
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Container(
            height: 25,
            width: 25,
            child: Image.asset(
              'assets/icons/bag.png',
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
