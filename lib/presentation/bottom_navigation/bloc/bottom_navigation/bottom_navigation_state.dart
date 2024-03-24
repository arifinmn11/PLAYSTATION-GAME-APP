part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationState extends Equatable {
  const BottomNavigationState();

  @override
  List<Object?> get props => [];
}

class BottomNavigationInitial extends BottomNavigationState {}

class BottomNavigationOnLoading extends BottomNavigationState {}

class BottomNavigationOnSuccess extends BottomNavigationState {}

class BottomNavigationOnError extends BottomNavigationState {
  final String? errorMessage;
  const BottomNavigationOnError({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class InitialIndexBottomNavigationOnSuccess extends BottomNavigationState {}

class ChangeIndexBottomNavigationOnSuccess extends BottomNavigationState {}