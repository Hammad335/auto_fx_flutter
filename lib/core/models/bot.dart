class Bot {
  final String name;
  final String description;
  final double accuracy;
  final bool isBackwardTesting;
  final bool isForwardTesting;

  const Bot({
    required this.name,
    required this.description,
    required this.accuracy,
    required this.isBackwardTesting,
    required this.isForwardTesting,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'accuracy': accuracy,
      'isBackwardTesting': isBackwardTesting,
      'isForwardTesting': isForwardTesting,
    };
  }

  factory Bot.fromJson(Map<String, dynamic> json) {
    return Bot(
      name: json['name'] as String,
      description: json['description'] as String,
      accuracy: json['accuracy'] as double,
      isBackwardTesting: json['isBackwardTesting'] as bool,
      isForwardTesting: json['isForwardTesting'] as bool,
    );
  }
}
