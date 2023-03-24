import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lori/src/colors/system_colors.dart';
import 'package:lori/src/ui/skip_button.dart';
import 'package:lori/src/ui/social_button.dart';
import 'package:lori/src/ui/subtitle_text.dart';
import 'package:lori/src/ui/title_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints(minHeight: viewportConstraints.maxHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        child: const SkipButton(),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TitleText(
                                text: 'Create your account',
                                color: SystemColors.lightPrimary,
                              ),
                              SubtitleText(
                                text: 'You are one step close',
                                color: SystemColors.lightOnSurface
                                    .withOpacity(0.6),
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: GoogleFonts.notoSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: SystemColors.lightOnSurface,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Form(
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  autofillHints: const [AutofillHints.email],
                                  keyboardType: TextInputType.emailAddress,
                                  style: const TextStyle(
                                    color: SystemColors.lightOnSurface,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: SystemColors.lightSurface,
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                        color: SystemColors.lightPrimary,
                                      ),
                                    ),
                                    hintText: 'janice.cl@gmail.com',
                                    hintStyle: TextStyle(
                                      color: SystemColors.lightOnSurface
                                          .withOpacity(0.6),
                                    ),
                                    prefixIcon: const Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Icon(
                                        Icons.email_outlined,
                                        size: 24,
                                        color: SystemColors.lightOnSurface,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Password',
                                style: GoogleFonts.notoSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Form(
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  autofillHints: const [AutofillHints.email],
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  enableSuggestions: true,
                                  style: const TextStyle(
                                    color: SystemColors.lightOnSurface,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: SystemColors.lightSurface,
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                        color: SystemColors.lightPrimary,
                                      ),
                                    ),
                                    hintText: '••••••••••••',
                                    hintStyle: TextStyle(
                                      color: SystemColors.lightOnSurface
                                          .withOpacity(0.6),
                                    ),
                                    prefixIcon: const Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Icon(
                                        Icons.lock_outline,
                                        size: 24,
                                        color: SystemColors.lightOnSurface,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 48.0),
                          Column(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Expanded(
                                      child: Divider(
                                        color: SystemColors.lightOutline,
                                        height: 1.5,
                                        thickness: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                      ),
                                      child: Text(
                                        'Or sign up with',
                                        style: GoogleFonts.notoSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: SystemColors.lightOnSurface
                                              .withOpacity(0.6),
                                        ),
                                      ),
                                    ),
                                    const Expanded(
                                      child: Divider(
                                        color: SystemColors.lightOutline,
                                        height: 1.5,
                                        thickness: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SocialButton(
                                    iconPath:
                                        "assets/logo/third_party/google.svg",
                                    onPressed: () {},
                                  ),
                                  const SizedBox(width: 16.0),
                                  SocialButton(
                                    iconPath:
                                        "assets/logo/third_party/facebook.svg",
                                    onPressed: () {},
                                  ),
                                  const SizedBox(width: 16.0),
                                  SocialButton(
                                    iconPath:
                                        "assets/logo/third_party/twitter.svg",
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () => Get.toNamed('/personal'),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                SystemColors.lightPrimaryContainer,
                              ),
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size(MediaQuery.of(context).size.width, 48.0),
                              ),
                            ),
                            child: Text(
                              'Sign up',
                              style: GoogleFonts.notoSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: SystemColors.lightPrimary,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Already have an account? ',
                                  style: GoogleFonts.notoSans(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: SystemColors.lightOnSurface,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Sign in',
                                  style: GoogleFonts.notoSans(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: SystemColors.lightSecondary,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
