import 'package:auto_fx_flutter/core/repository/lessons_repo/lessons_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/models/models.dart';
import '../../../bottom_nav_screen/controller/nav_controller.dart';

class LessonsController extends GetxController {
  late LessonsRepo _lessonsRepo;
  late final NavController _navController;

  List<LessonCategory> _lessonCategories = <LessonCategory>[];

  // for changing category icon: open/close,
  // and showing gradient onTapping category
  late RxList<bool> categoriesIndex;

  LessonsController() {
    _navController = Get.find<NavController>();
    _lessonsRepo = LessonsRepo();
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
