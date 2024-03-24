part of 'dropdown_bloc.dart';

@immutable
abstract class DropdownState extends Equatable {
  const DropdownState();

  @override
  List<Object?> get props => [];
}

class DropdownInitial extends DropdownState {}

class DropdownOnLoading extends DropdownState {}

class DropdownOnError extends DropdownState {
  final String? errorMessage;
  const DropdownOnError({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class InitialSelectedDropdownValueOnSuccess extends DropdownState {}

class ChangeSelectedDropdownOnSuccess extends DropdownState {}
