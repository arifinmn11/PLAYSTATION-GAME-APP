import 'package:flutter/material.dart';
import 'package:playstation_games_app/dependencies/dependencies_export.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationInitial()) {
    on<InitialIndexBottomNavigation>(_initialBottomNavigation);
    on<ChangeIndexBottomNavigation>(_changeIndexBottomNavigation);
  }

  int selectedBottomNavigationIndex = 0;

  void _initialBottomNavigation(InitialIndexBottomNavigation event, Emitter<BottomNavigationState> emit) async {
    emit(BottomNavigationOnLoading());

    try {
      selectedBottomNavigationIndex = event.selectedIndex!;
      emit(InitialIndexBottomNavigationOnSuccess());
    } on Exception catch(E) {
      emit(BottomNavigationOnError(errorMessage: E.toString()));
    }
  }

  void _changeIndexBottomNavigation(ChangeIndexBottomNavigation event, Emitter<BottomNavigationState> emit) async {
    emit(BottomNavigationOnLoading());

    try {
      selectedBottomNavigationIndex = event.selectedIndex!;
      emit(ChangeIndexBottomNavigationOnSuccess());
    } on Exception catch(E) {
      emit(BottomNavigationOnError(errorMessage: E.toString()));
    }
  }
}
