import 'package:auto_fx_flutter/core/models/models.dart';
import 'package:auto_fx_flutter/core/repository/lessons_repo/lessons_repo.dart';
import 'package:auto_fx_flutter/core/repository/lessons_repo/lessons_repo_impl.dart';
import 'package:auto_fx_flutter/features/bottom_nav_screen/controller/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LessonsPageController extends GetxController {
  late LessonsRepo _lessonsRepo;
  late final NavController _navController;

  List<LessonCategory> _lessonCategories = <LessonCategory>[];

  // for changing category icon: open/close,
  // and showing gradient onTapping category
  late RxList<bool> categoriesIndex;

  LessonsPageController() {
    _navController = Get.find<NavController>();
    _lessonsRepo = Get.find<LessonsRepoImpl>();
  }

  List<LessonCategory> get getAllLessonCategories => [..._lessonCategories];

  Future<List<LessonCategory>?> get() async {
    try {
      _lessonCategories = await _lessonsRepo.getLessons();
      categoriesIndex = List.filled(_lessonCategories.length, false).obs;
      return getAllLessonCategories;
    } catch (exception) {
      return null;
    }
  }

  toggleSelectedCategoryIcon(int index) =>
      categoriesIndex[index] = !categoriesIndex[index];

  Size get getSize => _navController.getSize;
}
