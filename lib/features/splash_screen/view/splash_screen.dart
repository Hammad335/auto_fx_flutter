import 'package:auto_fx_flutter/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  static const String name = '/splash-screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Tween<double> _tween;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _tween = Tween(begin: 0.0, end: 1.0);
    _animation = _tween.animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Container(
            width: context.width,
            height: context.height,
            alignment: Alignment.center,
            decoration: Gradients.splashBackgroundDecoration,
            child: FadeTransition(
              opacity: _animation,
              child: Image.asset(
                'assets/images/logos/logo.png',
                width: context.width * 0.58,
              ),
            ),
            //
          ),
        ),
      ),
    );
  }
}
