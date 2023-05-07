class BotFeatures {
  final double accuracy;
  final bool isBackwardTesting;
  final bool isForwardTesting;

  const BotFeatures({
    required this.accuracy,
    required this.isBackwardTesting,
    required this.isForwardTesting,
  });

  Map<String, dynamic> toJson() {
    return {
      'accuracy': accuracy,
      'isBackwardTesting': isBackwardTesting,
      'isForwardTesting': isForwardTesting,
    };
  }

  factory BotFeatures.fromJson(Map<String, dynamic> json) {
    return BotFeatures(
      accuracy: json['accuracy'] as double,
      isBackwardTesting: json['isBackwardTesting'] as bool,
      isForwardTesting: json['isForwardTesting'] as bool,
    );
  }
}
