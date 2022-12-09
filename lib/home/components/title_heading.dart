import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleHeading extends StatelessWidget {
  const TitleHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
                text: 'New Collection\n',
                style: GoogleFonts.raleway(
                  fontSize: 25,
                  letterSpacing: 1,
                )),
            TextSpan(
                text: 'with ',
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
              text: '15% ',
              style: GoogleFonts.montserrat(
                fontSize: 30,
                color: Color(0xFFB2EE32),
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'discount ',
              style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
