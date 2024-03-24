import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/data/data_sources/remote/game/game.dart';
import 'package:playstation_games_app/domain/entities/game/detail_game_entity.dart';
import 'package:playstation_games_app/domain/entities/game/games_entity.dart';
import 'package:playstation_games_app/domain/repositories/game/game_repository.dart';

class GameRepositoryImpl extends GameRepository {
  final GameRemoteDataSource gameRemoteDataSource;

  GameRepositoryImpl({required this.gameRemoteDataSource});

  @override
  Future<Either<Failure, List<GamesEntity>>> getGames(String platformId, String genre, int gamesPage) async {
    try {
      final result = await gameRemoteDataSource.getGames(platformId, genre, gamesPage);
      return Either<Failure, List<GamesEntity>>(null, result.toEntity());
    } on ServerException {
      return const Either<Failure, List<GamesEntity>>(ServerFailure('Failure Get Data'), null);
    }
  }

  @override
  Future<Either<Failure, GameDetailEntity>> getGameDetail(int platformId) async {
    try {
      final result = await gameRemoteDataSource.getGameDetail(platformId);
      return Either<Failure, GameDetailEntity>(null, result.toEntity());
    } on ServerException {
      return  const Either<Failure, GameDetailEntity>(ServerFailure('Failure Get Data'), null);
    }
  }
}