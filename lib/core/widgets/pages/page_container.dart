import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/colors.dart';
import '../widgets.dart';

class PageContainer extends StatelessWidget {
  final Widget child;
  final NavController _controller = Get.find<NavController>();

  PageContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(
        top: _controller.getSize.height * 0.05,
        left: 40,
        right: 40,
      ),
      child: Column(
        children: [
          PageHeader(size: _controller.getSize),
          SizedBox(height: _controller.getSize.height * 0.07),
          Expanded(child: child),
        ],
      ),
    );
  }
}
