import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopCategory extends StatelessWidget {
  const ShopCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Shop Screen',
          style: GoogleFonts.montserrat(
            fontSize: 30,
            color: Color(0xFFB2EE32),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
