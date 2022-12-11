import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Search Screen',
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
