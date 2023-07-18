import '../../models/models.dart';

abstract class BotsRepo {

  Future<List<Bot>> getCustomizedBots();

  Future<List<Bot>> getOfficialBots();
}