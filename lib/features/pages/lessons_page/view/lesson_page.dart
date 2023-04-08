import 'package:auto_fx_flutter/features/pages/lessons_page/controller/lesosns_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/theme/colors.dart';

class LessonsPage extends StatelessWidget {
  final LessonsController _controller = Get.find<LessonsController>();

  LessonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Text(
          'lessons-page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
