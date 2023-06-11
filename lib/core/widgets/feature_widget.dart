import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:auto_fx_flutter/core/widgets/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../features/bot_details_screen/controller/bot_details_controller.dart';
import '../styles/styles.dart';

class FeatureWidget extends StatelessWidget {
  final BotDetailsController controller;
  final MapEntry<String, dynamic> feature;

  const FeatureWidget({
    super.key,
    required this.controller,
    required this.feature,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.getFormattedKey(feature.key),
                  style: TextStyles.featureKeyStyle,
                ),
                if (feature.value.runtimeType == double)
                  Text(
                    '${feature.value.toInt().toString()} %',
                    style: TextStyles.percentageStyle,
                  ),
                if (feature.value.runtimeType == bool)
                  Neumorphic(
                    style: CustomNeumorphic.style(
                      fillColor: containerFillColor,
                      intensity: 0.7,
                      depth: -2,
                      borderRadius: 4,
                      addBorder: true,
                    ),
                    child: Container(
                      width: 20,
                      height: 18,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: feature.value
                          ? const Icon(
                              Icons.check,
                              color: green,
                              size: 13,
                            )
                          : null,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          CustomPaintDivider(
            width: controller.getSize.width,
            dividerColor: dividerColorLight,
          ),
        ],
      ),
    );
  }
}
