part of 'bottom_navigation_bloc.dart';

@immutable
abstract class BottomNavigationEvent extends Equatable{
  const BottomNavigationEvent();

  @override
  List<Object?> get props => [];
}

class InitialIndexBottomNavigation extends BottomNavigationEvent{
  final int? selectedIndex;

  const InitialIndexBottomNavigation({this.selectedIndex});

  @override
  List<Object?> get props => [selectedIndex];
}

class ChangeIndexBottomNavigation extends BottomNavigationEvent{
  final int? selectedIndex;

  const ChangeIndexBottomNavigation({this.selectedIndex});

  @override
  List<Object?> get props => [selectedIndex];
}

