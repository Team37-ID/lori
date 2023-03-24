import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.notoSans(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: color,
        height: 1.4,
        wordSpacing: 0.5,
      ),
    );
  }
}
