part of 'game_bloc.dart';

@immutable
abstract class GameState extends Equatable {
  const GameState();

  @override
  List<Object?> get props => [];
}

class GameInitial extends GameState {}

class GetGamesOnLoading extends GameState {}

class GetGamesOnSuccess extends GameState {}

class GetGamesOnError extends GameState {
  final String? errorMessage;
  const GetGamesOnError({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class ClearGameValueOnSuccess extends GameState {}
