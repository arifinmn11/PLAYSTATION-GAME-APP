import 'package:playstation_games_app/data/models/games/detail_game_response_model.dart';
import 'package:playstation_games_app/data/models/games/games_response_model.dart';

abstract class GameRemoteDataSource {
  Future<GamesResponseModel> getGames(String platformId, String genre, int gamesPage);
  Future<GameDetailResponseModel> getGameDetail(int platformId);
}
