import 'package:auto_fx_flutter/core/models/models.dart';
import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../../../features/bottom_nav_screen/pages/bots_page/controller/bots_page_controller.dart';
import '../../../styles/styles.dart';
import '../../widgets.dart';

class BotWidget extends StatelessWidget {
  final BotsPageController controller;
  final int index;

  const BotWidget({
    super.key,
    required this.controller,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final Bot bot = controller.getBots[index];
    return GestureDetector(
      onTap: () => controller.navigateToBotScreen(index),
      child: Neumorphic(
        margin: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
        padding: const EdgeInsets.all(0),
        style: CustomNeumorphic.style(
          fillColor: botWidgetFillColor,
          intensity: 0.9,
          depth: 8,
          borderRadius: 12,
        ),
        child: BorderGradientContainer(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 200,
            decoration: BoxDecoration(
              color: botWidgetFillColor,
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
