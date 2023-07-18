import 'package:auto_fx_flutter/constants/data.dart';
import 'package:auto_fx_flutter/core/repository/lessons_repo/lessons_repo.dart';
import '../../models/models.dart';

class LessonsRepoImpl implements LessonsRepo {

  @override
  Future<List<LessonCategory>> getLessons() async {
    await Future.delayed(const Duration(seconds: 2));
    return lessonCategories;
  }
}
