part of 'genres_bloc.dart';

@immutable
abstract class GenresState extends Equatable {
  const GenresState();

  @override
  List<Object?> get props => [];
}

class GenresInitial extends GenresState {}

class GenresOnLoading extends GenresState {}

class GenresOnSuccess extends GenresState {}

class GenresOnError extends GenresState {
  final String? errorMessage;
  const GenresOnError({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class InitialSelectedGenre extends GenresState {}

class ChangeGenre extends GenresState {}
