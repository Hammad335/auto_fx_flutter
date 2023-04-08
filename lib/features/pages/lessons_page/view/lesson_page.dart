import 'package:auto_fx_flutter/core/models/lesson_category.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/widgets.dart';
import 'package:auto_fx_flutter/features/pages/lessons_page/controller/lessons_controller.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
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
      margin: EdgeInsets.only(
        top: _controller.getSize.height * 0.06,
        left: 40,
        right: 40,
      ),
      child: Column(
        children: [
          PageHeader(size: _controller.getSize),
          SizedBox(height: _controller.getSize.height * 0.08),
          const SizedBox(
            height: 50,
            child: Text(
              'Lesson Categories',
              style: TextStyles.lessonPageHeadingStyle,
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: _controller.get(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<LessonCategory>?> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    print('error');
                    print(snapshot.error.toString());
                  } else if (!snapshot.hasData) {
                    print('no data');
                  } else {
                    return ListView.builder(
                      itemCount: _controller.getAllLessonCategories.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return LessonWidget(
                          controller: _controller,
                          index: index,
                        );
                      },
                    );
                  }
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
