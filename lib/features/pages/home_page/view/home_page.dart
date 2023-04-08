import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/widgets.dart';
import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  static const String name = '/home-screen';
  final HomeController _controller = Get.find<HomeController>();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(top: _controller.getSize.height * 0.08),
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logos/logo.png',
            width: _controller.getSize.width * 0.60,
            height: _controller.getSize.width * 0.18,
          ),
          SizedBox(height: _controller.getSize.height * 0.08),
          CustomTabView(
            firstLabel: 'Official Bots',
            secondLabel: 'Your Bots',
            width: _controller.getSize.width * 0.35,
            height: _controller.getSize.height * 0.045,
            homeController: _controller,
          ),
        ],
      ),
    );
  }
}
