import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lori/src/colors/system_colors.dart';

class SocialButton extends StatelessWidget {
  const SocialButton(
      {Key? key, required this.iconPath, required this.onPressed})
      : super(key: key);
  final String iconPath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: SystemColors.lightOnPrimaryContainer),
      child: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          iconPath,
        ),
      ),
    );
  }
}
