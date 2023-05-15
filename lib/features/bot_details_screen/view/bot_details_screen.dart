import 'package:auto_fx_flutter/core/models/models.dart';
import 'package:auto_fx_flutter/core/theme/colors.dart';
import 'package:auto_fx_flutter/core/theme/text_styles.dart';
import 'package:auto_fx_flutter/features/bot_details_screen/controller/bot_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/widgets.dart';

class BotDetailsScreen extends StatelessWidget {
  static const String name = '/bot-details-screen';
  final _controller = Get.find<BotDetailsController>();

  BotDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _controller.initSize(context);
    Bot bot = _controller.getCurrentBot;
    List<MapEntry<String, dynamic>> features = _controller.getBotFeaturesList;
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: CustomButton(
          label: 'Trade It',
          width: _controller.getSize.width * 0.79,
          height: _controller.getSize.height * 0.050,
          elevation: 0,
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: PageContainer(
          paddingHorizontal: 25,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: _controller.getSize.height * 0.04),
                Text(
                  bot.name,
                  style: TextStyles.botScreenHeadingStyle,
                ),
                const SizedBox(height: 15),
                Text(
                  bot.description,
                  style: TextStyles.botDescStyle,
                ),
                const SizedBox(height: 25),
                const Text(
                  'Features',
                  style: TextStyles.botScreenHeadingStyle,
                ),
                const SizedBox(height: 20),
                ...List.generate(features.length, (index) {
                  return FeatureWidget(
                    controller: _controller,
                    feature: features[index],
                  );
                }),
                const Text(
                  'Charts',
                  style: TextStyles.botScreenHeadingStyle,
                ),
                const SizedBox(height: 25),
                Center(
                  child: BorderGradientContainer(
                    borderRadius: 8,
                    child: Container(
                      height: 200,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: fillColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 65),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
