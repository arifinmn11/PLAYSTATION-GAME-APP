
import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/domain/entities/game/detail_game_entity.dart';
import 'package:playstation_games_app/domain/entities/game/games_entity.dart';
import 'package:playstation_games_app/domain/repositories/game/game_repository.dart';

class GameCase {
  final GameRepository gameRepository;
  GameCase({required this.gameRepository});
}

extension GetGames on GameCase {
  Future<Either<Failure, List<GamesEntity>>> getGames(String platformId, String genre, int gamesPage) {
    return gameRepository.getGames(platformId, genre, gamesPage);
  }
}

extension GetGameDetail on GameCase {
  Future<Either<Failure, GameDetailEntity>> getDetailGame(int platformId) {
    return gameRepository.getGameDetail(platformId);
  }
}