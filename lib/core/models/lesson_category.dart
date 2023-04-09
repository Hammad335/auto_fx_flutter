class LessonCategory {
  final String name;
  final List<String> topics;

  const LessonCategory({
    required this.name,
    required this.topics,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'topics': topics,
    };
  }

  factory LessonCategory.fromJson(Map<String, dynamic> json) {
    return LessonCategory(
      name: json['name'] as String,
      topics: json['topics'] as List<String>,
    );
  }
}
