import 'dart:async';

import 'package:firstproject/src/screens/auth_screen/login.dart';
import 'package:firstproject/src/screens/home_screen/home_screen.dart';
import 'package:firstproject/src/utils/images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String route = "splashScreen";

  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const timeout = Duration(seconds: 3);
  static const ms = Duration(milliseconds: 1);

  startTimeout([int milliseconds]) {
    var duration = milliseconds == null ? timeout : ms * milliseconds;
    return Timer(duration, handleTimeout);
  }

  handleTimeout() async {
    Navigator.of(context).pushReplacementNamed(LoginScreen.route);
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageAssets.splashImage),

            ],
          ),
        ),
      ),
    );
  }
}
