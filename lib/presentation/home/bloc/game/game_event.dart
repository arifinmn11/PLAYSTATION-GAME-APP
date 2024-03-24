part of 'game_bloc.dart';

@immutable
abstract class GameEvent extends Equatable{
  const GameEvent();

  @override
  List<Object?> get props => [];
}

class GetGames extends GameEvent{
  final String? platformId;
  final String? genre;
  const GetGames({this.platformId, this.genre});

  @override
  List<Object?> get props => [platformId, genre];
}

class ClearGameValue extends GameEvent{}

// class GetGameDetail extends GameEvent{
//   final PlatformObject? selectedDropdownValue;
//   const GetGameDetail({this.selectedDropdownValue});
//
//   @override
//   List<Object?> get props => [selectedDropdownValue];
// }
