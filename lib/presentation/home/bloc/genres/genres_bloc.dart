import 'package:flutter/material.dart';
import 'package:playstation_games_app/dependencies/dependencies_export.dart';

part 'genres_event.dart';
part 'genres_state.dart';

class GenresBloc extends Bloc<GenresEvent, GenresState> {
  GenresBloc() : super(GenresInitial()) {
    on<InitialGenre>(_initialGenre);
    on<ChangeSelectedGenre>(_changeSelectedGenre);
  }

  List<String> genres = ['all', 'action', 'indie', 'sports', 'adventure', 'shooter', 'casual', 'simulation'];
  late String selectedGenre;

  void _initialGenre(InitialGenre event, Emitter<GenresState> emit) async {
    emit(GenresOnLoading());

    try {
      selectedGenre = event.selectedGenre!;
      emit(InitialSelectedGenre());
    } on Exception catch(E) {
      emit(GenresOnError(errorMessage: E.toString()));
    }
  }

  void _changeSelectedGenre(ChangeSelectedGenre event, Emitter<GenresState> emit) async {
    emit(GenresOnLoading());

    try {
      selectedGenre = event.selectedGenre!;
      emit(ChangeGenre());
    } on Exception catch(E) {
      emit(GenresOnError(errorMessage: E.toString()));
    }
  }
}
