import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import '../../../../../core/styles/styles.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, context.height * 0.04, 30, 0),
      child: Column(
        children: [
          const HomePageHeader(),
          GestureDetector(
            onTap: () {},
            child: Neumorphic(
              margin: const EdgeInsets.only(top: 30, bottom: 30),
              padding: const EdgeInsets.all(0),
              style: CustomNeumorphic.style(
                fillColor: botWidgetFillColor,
                intensity: 0,
                depth: 0,
                borderRadius: 26,
              ),
              child: BorderGradientContainer(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 200,
                  decoration: BoxDecoration(
                    color: botWidgetFillColor,
                    borderRadius: BorderRadius.circular(26),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
