import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_test_prabowo/view/detailproduct.dart';
import 'package:technical_test_prabowo/view/listproductpage.dart';
import 'package:technical_test_prabowo/models/home_screen_model.dart';
import 'package:technical_test_prabowo/view/home_screen_view.dart';
import 'package:technical_test_prabowo/view/onboard_view.dart';
import 'package:technical_test_prabowo/view/signinpage.dart';
import 'package:technical_test_prabowo/style.dart';
import 'package:technical_test_prabowo/view_models/home_view_model.dart';
import 'package:technical_test_prabowo/view_models/onboarding_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnboardingViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeViewModel(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange, primaryColor: colorOrange),
      darkTheme: ThemeData.dark(),
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/onboard': (context) => OnboardingScreenView(),
        '/signin': (context) => SigninPage(),
        '/list': (context) => ListProductPage(),
        '/detail': (context) => DetailProductPage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/onboard');
      // Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_splash.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/logo.png",
                  height: 45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
