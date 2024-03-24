part of 'dropdown_bloc.dart';

@immutable
abstract class DropdownEvent extends Equatable{
  const DropdownEvent();

  @override
  List<Object?> get props => [];
}

class InitialDropdownEvent extends DropdownEvent{
  final PlatformObject? selectedDropdownValue;
  const InitialDropdownEvent({this.selectedDropdownValue});

  @override
  List<Object?> get props => [selectedDropdownValue];
}

class ChangeDropdownEvent extends DropdownEvent{
  final PlatformObject? selectedDropdownValue;
  const ChangeDropdownEvent({this.selectedDropdownValue});

  @override
  List<Object?> get props => [selectedDropdownValue];
}
