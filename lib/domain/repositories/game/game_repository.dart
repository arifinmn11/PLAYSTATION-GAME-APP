import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/domain/entities/game/detail_game_entity.dart';
import 'package:playstation_games_app/domain/entities/game/games_entity.dart';

abstract class GameRepository {
  Future<Either<Failure, List<GamesEntity>>> getGames(String platformId, String genre, int gamesPage);
  Future<Either<Failure, GameDetailEntity>> getGameDetail(int platformId);
}