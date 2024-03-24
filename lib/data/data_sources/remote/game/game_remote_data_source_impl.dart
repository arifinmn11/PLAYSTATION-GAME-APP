
import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/data/data_sources/remote/game/game.dart';
import 'package:playstation_games_app/data/models/games/detail_game_response_model.dart';
import 'package:playstation_games_app/data/models/games/games_response_model.dart';

class GameRemoteDataSourceImpl implements GameRemoteDataSource {
  final CallApi callApi;
  GameRemoteDataSourceImpl({required this.callApi});

  @override
  Future<GamesResponseModel> getGames(String platformId, String genre, int gamesPage) async {
    Map<String, Object> params;
    final endDate = DateTime.now();
    final startDate = DateTime(endDate.year - 1, endDate.month, endDate.day);

    if (genre == 'all') {
      params = {
        'key': appKey,
        'page_size': 20,
        'dates': '${yearsMonthDay(startDate)},${yearsMonthDay(endDate)}',
        'ordering': '-released',
        'page': gamesPage,
        'platforms': platformId
      };
    } else {
      params = {
        'key': appKey,
        'page_size': 20,
        'dates': '${yearsMonthDay(startDate)},${yearsMonthDay(endDate)}',
        'ordering': '-released',
        'page': gamesPage,
        'platforms': platformId,
        'genres': genre,
      };
    }

    final response = await callApi.getJson(
      queryParameters: params,
      endPoint: baseUrl,
    );

    if (response.statusCode == 200) {
      var data = GamesResponseModel.fromJson(response.data);
      return data;
    } else {
      throw ServerException(response.statusMessage.toString());
    }
  }

  @override
  Future<GameDetailResponseModel> getGameDetail(int platformId) async {
    Map<String, Object> params;

      params = {
        'key': appKey,
      };

    final response = await callApi.getJson(
      queryParameters: params,
      endPoint: '$baseUrl/$platformId',
    );

    if (response.statusCode == 200) {
      var data = GameDetailResponseModel.fromJson(response.data);
      return data;
    } else {
      throw ServerException(response.statusMessage.toString());
    }
  }
}
