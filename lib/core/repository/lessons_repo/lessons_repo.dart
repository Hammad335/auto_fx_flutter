import '../../models/models.dart';

abstract class LessonsRepo {
  Future<List<LessonCategory>> getLessons();
}
