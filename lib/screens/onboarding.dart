import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lori/src/colors/custom_primary_colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/illustration/onboarding.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track your fuel, fuel your life',
                    style: GoogleFonts.notoSans(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: PrimaryColors.lightPrimary,
                    ),
                  ),
                  Text(
                    'Take charge of your nutrition and unlock your full potential',
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      color: PrimaryColors.lightOnPrimaryContainer,
                    ),
                  ),
                ],
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    //! TODO: Add onpressed function
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: PrimaryColors.lightPrimary,
                      size: 16,
                    ),
                    label: Text(
                      'Get Started',
                      style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: PrimaryColors.lightPrimary,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        PrimaryColors.lightPrimaryContainer,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
