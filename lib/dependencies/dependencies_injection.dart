
import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/data/data_sources/remote/game/game.dart';
import 'package:playstation_games_app/data/repositories/game/game_repository_impl.dart';
import 'package:playstation_games_app/domain/repositories/game/game_repository.dart';
import 'package:playstation_games_app/domain/use_cases/game/game_case.dart';
import 'package:playstation_games_app/presentation/bottom_navigation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:playstation_games_app/presentation/home/bloc/game/game_bloc.dart';

void initializeDependenciesInjection() {
  getIt
  //Network
    ..registerLazySingleton<CallApi>(() => CallApiImpl())

  //State Management
    ..registerFactory(() => BottomNavigationBloc())
    ..registerFactory(() => GameBloc(gameCase: getIt()))

  //Use case
    ..registerLazySingleton(() => GameCase(gameRepository: getIt()))

  // //Repository
    ..registerLazySingleton<GameRepository>(() => GameRepositoryImpl(gameRemoteDataSource: getIt()))

  // //Data Sources
    ..registerLazySingleton<GameRemoteDataSource>(() => GameRemoteDataSourceImpl(callApi: getIt()));
}