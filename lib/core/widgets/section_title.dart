import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    final size = (MediaQuery.sizeOf(context).width * .04).clamp(30.0, 40.0);
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: size,
        fontWeight: FontWeight.w800,
        letterSpacing: -size * .03,
      ),
    );
  }
}
