import 'package:auto_fx_flutter/core/models/models.dart';

class Bot {
  final String name;
  final String description;
  BotFeatures features;

  Bot({
    required this.name,
    required this.description,
    required this.features,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'features': features,
    };
  }

  factory Bot.fromMap(Map<String, dynamic> json) {
    return Bot(
      name: json['name'] as String,
      description: json['description'] as String,
      features: json['features'] as BotFeatures,
    );
  }
}
