import '../entities/game_server.dart';

abstract class GameRepository {
  Stream<List<GameServer>> getGameServers();
  Future<void> joinGameServer(String serverId);
  Future<void> leaveGameServer(String serverId);
  Future<void> createGameServer({
    required String name,
    required bool isPrivate,
    required int maxPlayers,
    String? password,
  });
  Future<void> deleteGameServer(String serverId);
}
