import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyNowBtn extends StatelessWidget {
  const BuyNowBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 100,
      right: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          minimumSize: Size(30, 60),
          backgroundColor: Color(0xFFB2EE32),
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            'Buy Now',
            style: GoogleFonts.ubuntu(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
