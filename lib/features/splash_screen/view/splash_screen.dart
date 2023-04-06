import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String name = '/splash-screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
