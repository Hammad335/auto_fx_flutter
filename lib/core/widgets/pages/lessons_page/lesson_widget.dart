import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import '../../../../features/bottom_nav_screen/pages/lessons_page/controller/lessons_page_controller.dart';
import '../../../styles/styles.dart';
import '../../../theme/colors.dart';
import '../../../styles/text_styles.dart';

class LessonWidget extends StatelessWidget {
  final LessonsPageController controller;
  final int index;

  const LessonWidget({
    super.key,
    required this.controller,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(0),
      style: CustomNeumorphic.style(
        fillColor: lessonWidgetFillColor,
        intensity: 0.80,
        depth: -3,
        borderRadius: 6,
      ),
      child: Obx(
        () => Container(
          decoration: controller.categoriesIndex[index]
              ? Gradients.selectedCategoryBorderGradient
              : null,
          child: Padding(
            padding: const EdgeInsets.all(1.5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              decoration: BoxDecoration(
                color: lessonWidgetFillColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.getAllLessonCategories[index].name,
                        style: TextStyles.lessonCategoryTextStyle,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.toggleSelectedCategoryIcon(index);
                        },
                        child: Icon(
                          controller.categoriesIndex[index]
                              ? Icons.close
                              : Icons.add,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  // if (controller.categoriesIndex[index])
                  //   TopicsListView(controller: controller, index: index),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
