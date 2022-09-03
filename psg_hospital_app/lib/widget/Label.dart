import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  final String HeadingTxt;

  Heading(this.HeadingTxt);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Flexible(
            child: Text(
              HeadingTxt,
              style: GoogleFonts.lato(
                color: Color(0xff4A64FE),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
