import 'package:flutter/material.dart';
import 'package:playstation_games_app/dependencies/dependencies_export.dart';
import 'package:playstation_games_app/domain/entities/game/games_entity.dart';
import 'package:playstation_games_app/domain/use_cases/game/game_case.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final GameCase gameCase;
  GameBloc({required this.gameCase}) : super(GameInitial()) {
    on<GetGames>(_getGames);
    on<ClearGameValue>(_clearGameValue);
  }

  int gamesPage = 1;
  List<GamesEntity> games = [];
  bool firstLoad = true;

  void _getGames(GetGames event, Emitter<GameState> emit) async {
    emit(GetGamesOnLoading());

    try {
      var result = await gameCase.getGames(event.platformId!, event.genre!, gamesPage);
      if(gamesPage == 1){
        firstLoad = false;
      }
      gamesPage = gamesPage + 1;
      games.addAll(result.right!);
      emit(GetGamesOnSuccess());
    } on Exception catch(E) {
      emit(GetGamesOnError(errorMessage: E.toString()));
    }
  }

  void _clearGameValue(ClearGameValue event, Emitter<GameState> emit) async {
    try {
      gamesPage = 1;
      firstLoad = true;
      games.clear();
      emit(ClearGameValueOnSuccess());
    } on Exception catch(E) {
      emit(GetGamesOnError(errorMessage: E.toString()));
    }
  }
}
