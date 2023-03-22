import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lori/screens/auth/signup.dart';
import 'package:lori/screens/onboarding.dart';
import 'package:lori/src/colors/system_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme:
          ThemeData(scaffoldBackgroundColor: SystemColors.lightSurfaceVariant),
      home: const Onboarding(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Onboarding()),
        GetPage(name: '/signup', page: () => const SignUp()),
      ],
    );
  }
}
