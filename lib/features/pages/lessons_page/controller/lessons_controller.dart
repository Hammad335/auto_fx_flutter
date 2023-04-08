import 'package:auto_fx_flutter/core/repository/lessons_repo/lessons_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/models/models.dart';
import '../../../bottom_nav_screen/controller/nav_controller.dart';

class LessonsController extends GetxController {
  late LessonsRepo _lessonsRepo;
  late final NavController _navController;

  List<LessonCategory>? lessonCategories;

  // for changing category icon: open/close
  late RxList<bool> categoriesIndex;

  LessonsController() {
    _navController = Get.find<NavController>();
    _lessonsRepo = LessonsRepo();
  }

  Size get getSize => _navController.getSize;

  List<LessonCategory> get getAllLessonCategories => [...lessonCategories!];

  Future<List<LessonCategory>?> get() async {
    if (lessonCategories != null && lessonCategories!.isNotEmpty) {
      return lessonCategories;
    }
    lessonCategories = await _lessonsRepo.getLessons();
    categoriesIndex = List.filled(lessonCategories!.length, false).obs;
    return getAllLessonCategories;
  }

  toggleSelectedCategoryIcon(int index) =>
      categoriesIndex[index] = !categoriesIndex[index];
}
