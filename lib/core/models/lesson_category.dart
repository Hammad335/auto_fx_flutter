class LessonCategory {
  final int index;
  final String name;
  final List<String> topics;

  const LessonCategory({
    required this.index,
    required this.name,
    required this.topics,
  });

  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'name': name,
      'topics': topics,
    };
  }

  factory LessonCategory.fromJson(Map<String, dynamic> json) {
    return LessonCategory(
      index: json['index'] as int,
      name: json['name'] as String,
      topics: json['topics'] as List<String>,
    );
  }
}
