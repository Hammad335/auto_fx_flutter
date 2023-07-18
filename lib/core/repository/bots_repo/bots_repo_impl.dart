import 'package:auto_fx_flutter/constants/data.dart';
import 'package:auto_fx_flutter/core/repository/bots_repo/bots_repo.dart';
import '../../models/models.dart';

class BotsRepoImpl implements BotsRepo {
  @override
  Future<List<Bot>> getCustomizedBots() async {
    await Future.delayed(const Duration(seconds: 2));
    return <Bot>[];
  }

  @override
  Future<List<Bot>> getOfficialBots() async {
    await Future.delayed(const Duration(seconds: 2));
    return officialBots;
  }
}
