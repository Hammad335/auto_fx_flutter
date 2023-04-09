import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/colors.dart';
import '../widgets.dart';

class PageContainer extends StatelessWidget {
  final NavController _controller = Get.find<NavController>();
  final Widget child;
  final double marginHorizontal;

  PageContainer({super.key, required this.child, this.marginHorizontal = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(
        top: _controller.getSize.height * 0.04,
        left: marginHorizontal,
        right: marginHorizontal,
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
