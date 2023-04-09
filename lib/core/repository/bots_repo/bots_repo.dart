import 'package:auto_fx_flutter/constants/data.dart';
import '../../models/models.dart';

class BotsRepo {
  Future<List<Bot>> getOfficialBots() async {
    await Future.delayed(const Duration(seconds: 2));
    return officialBots;
  }
}
