import 'package:auto_fx_flutter/constants/data.dart';

import '../../models/models.dart';

class LessonsRepo {
  Future<List<LessonCategory>> getLessons() async {
    await Future.delayed(const Duration(seconds: 4));
    return lessonCategories;
  }
}
