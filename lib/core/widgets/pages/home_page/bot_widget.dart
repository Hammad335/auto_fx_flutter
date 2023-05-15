import 'package:auto_fx_flutter/core/models/models.dart';
import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:auto_fx_flutter/core/widgets/custom_paint_divider.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/pages/home_page/controller/home_controller.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../../styles/styles.dart';
import '../../../theme/text_styles.dart';
import '../../widgets.dart';

class BotWidget extends StatelessWidget {
  final HomeController controller;
  final int index;

  const BotWidget({super.key, required this.controller, required this.index});

  @override
  Widget build(BuildContext context) {
    final Bot bot = controller.getOfficialBots[index];
    return GestureDetector(
      onTap: () => controller.navigateToBotScreen(index),
      child: Neumorphic(
        margin: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
        padding: const EdgeInsets.all(0),
        style: CustomNeumorphic.style(
          fillColor: fillColor,
          intensity: 0.9,
          depth: 8,
          borderRadius: 12,
        ),
        child: BorderGradientContainer(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 190,
            decoration: BoxDecoration(
              color: fillColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Expanded(child: Container()),
                Text(
                  bot.name,
                  style: TextStyles.botWidgetTextStyle,
                ),
                const SizedBox(height: 15),
                CustomPaintDivider(
                  width: controller.getSize.width * 0.75,
                  dividerColor: dividerColorLight,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Accuracy : ',
                      style: TextStyles.botWidgetTextStyle,
                    ),
                    Text(
                      '${bot.features.accuracy.toInt()}%',
                      style: TextStyles.percentageStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
