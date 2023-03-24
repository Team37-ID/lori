import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lori/src/colors/system_colors.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Skip',
        style: GoogleFonts.notoSans(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: SystemColors.lightOnSurface.withOpacity(0.6),
          letterSpacing: 0.4,
        ),
      ),
    );
  }
}
