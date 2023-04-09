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
    return PageContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
