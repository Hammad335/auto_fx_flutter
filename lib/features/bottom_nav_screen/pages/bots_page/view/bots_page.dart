import 'package:auto_fx_flutter/core/models/bot.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/widgets/widgets.dart';
import '../../../../../constants/const.dart';
import '../controller/bots_page_controller.dart';

class BotsPage extends StatelessWidget {
  static const String name = '/home-screen';
  final BotsPageController _controller = Get.find<BotsPageController>();

  BotsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: _controller.getSize.height * 0.04),
          CustomTabView(
            firstLabel: labelOfficialBots,
            secondLabel: labelYourBots,
            width: _controller.getSize.width * 0.35,
            height: _controller.getSize.height * 0.045,
            botsPageController: _controller,
          ),
          SizedBox(height: _controller.getSize.height * 0.05),
          Obx(() {
            _controller.selectedBotTab.value;
            return Expanded(
              child: FutureBuilder(
                future: _controller.getBots.isEmpty ? _controller.get() : null,
                builder:
                    (BuildContext context, AsyncSnapshot<List<Bot>?> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.data == null && snapshot.hasError) {
                      print('error');
                      return const SizedBox.shrink();
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(
                        child: Image.asset(noBotsDefaultImage),
                      );
                    }
                  }
                  return ListView.builder(
                    itemCount: _controller.getBots.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BotWidget(
                        controller: _controller,
                        index: index,
                      );
                    },
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
