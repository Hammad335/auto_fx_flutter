import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/models/models.dart';
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
          SizedBox(height: _controller.getSize.height * 0.05),
          Expanded(
            child: FutureBuilder(
              future: _controller.getOfficialBots.isEmpty
                  ? _controller.get()
                  : null,
              builder:
                  (BuildContext context, AsyncSnapshot<List<Bot>?> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.data == null && snapshot.hasError) {
                    print('error');
                    return const SizedBox.shrink();
                  } else if (!snapshot.hasData) {
                    print('no data');
                    return const SizedBox.shrink();
                  }
                }
                return ListView.builder(
                  itemCount: _controller.getOfficialBots.length,
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
          ),
        ],
      ),
    );
  }
}
