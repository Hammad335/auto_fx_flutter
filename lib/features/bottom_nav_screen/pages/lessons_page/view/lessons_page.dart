import 'package:auto_fx_flutter/core/styles/text_styles.dart';
import 'package:auto_fx_flutter/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/models/models.dart';
import '../controller/lessons_page_controller.dart';

class LessonsPage extends StatelessWidget {
  final LessonsPageController _controller = Get.find<LessonsPageController>();

  LessonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      paddingHorizontal: 30,
      child: Column(
        children: [
          SizedBox(height: _controller.getSize.height * 0.04),
          const SizedBox(
            height: 50,
            child: Text(
              'Lesson Categories',
              style: TextStyles.lessonPageHeadingStyle,
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: _controller.getAllLessonCategories.isEmpty
                  ? _controller.get()
                  : null,
              builder: (BuildContext context,
                  AsyncSnapshot<List<LessonCategory>?> snapshot) {
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
                  itemCount: _controller.getAllLessonCategories.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return LessonWidget(
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
