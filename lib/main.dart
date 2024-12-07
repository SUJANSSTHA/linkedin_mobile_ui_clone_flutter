import 'package:flutter/material.dart';
import 'package:linkedin_mobile_ui_clone_flutter/pages/splash/splash_page.dart';

import 'pages/onboarding/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
   debugShowCheckedModeBanner: false,
    
      home: SplashPage(
        child: OnBoardingScreen(),
      ),
    );
  }
}
