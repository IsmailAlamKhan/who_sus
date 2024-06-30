abstract class GameServer {
  abstract final String id;
  abstract final String name;
  abstract final bool isPrivate;
  abstract final int maxPlayers;
  abstract final int currentPlayers;
}
