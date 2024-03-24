part of 'genres_bloc.dart';

@immutable
abstract class GenresEvent extends Equatable {
  const GenresEvent();

  @override
  List<Object?> get props => [];
}

class InitialGenre extends GenresEvent{
  final String? selectedGenre;
  const InitialGenre({this.selectedGenre});

  @override
  List<Object?> get props => [selectedGenre];
}

class ChangeSelectedGenre extends GenresEvent{
  final String? selectedGenre;
  const ChangeSelectedGenre({this.selectedGenre});

  @override
  List<Object?> get props => [selectedGenre];
}


