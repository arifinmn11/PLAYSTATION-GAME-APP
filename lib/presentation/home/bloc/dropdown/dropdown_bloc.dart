import 'package:flutter/material.dart';
import 'package:playstation_games_app/common/object/object.dart';
import 'package:playstation_games_app/dependencies/dependencies_export.dart';

part 'dropdown_event.dart';
part 'dropdown_state.dart';

class DropdownBloc extends Bloc<DropdownEvent, DropdownState> {
  DropdownBloc() : super(DropdownInitial()) {
    on<InitialDropdownEvent>(_initialIndex);
    on<ChangeDropdownEvent>(_changeDropdownValue);
  }

  List<PlatformObject> dropdownList = [
    const PlatformObject(platformId: '187', platformName: 'playstation5'),
    const PlatformObject(platformId: '18', platformName: 'playstation4')
  ];

  PlatformObject selectedDropdown = const PlatformObject(platformId: '187', platformName: 'playstation5');

  void _initialIndex(InitialDropdownEvent event, Emitter<DropdownState> emit) async {
    emit(DropdownOnLoading());

    try {
      selectedDropdown = event.selectedDropdownValue!;
      emit(InitialSelectedDropdownValueOnSuccess());
    } on Exception catch(E) {
      emit(DropdownOnError(errorMessage: E.toString()));
    }
  }

  void _changeDropdownValue(ChangeDropdownEvent event, Emitter<DropdownState> emit) async {
    emit(DropdownOnLoading());

    try {
      selectedDropdown = event.selectedDropdownValue!;
      emit(ChangeSelectedDropdownOnSuccess());
    } on Exception catch(E) {
      emit(DropdownOnError(errorMessage: E.toString()));
    }
  }
}
