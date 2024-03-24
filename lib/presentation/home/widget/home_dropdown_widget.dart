import 'package:flutter/material.dart';
import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/common/object/object.dart';
import 'package:playstation_games_app/presentation/home/bloc/dropdown/dropdown_bloc.dart';


class HomeDropdownWidget extends StatelessWidget {
  final DropdownBloc dropdownBloc;
  const HomeDropdownWidget({super.key, required this.dropdownBloc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
      child: ContainerWidget(
        color: Theme.of(context).colorScheme.secondary,
        isBordered: true,
        borderWidth: 1,
        borderRadius: 4,
        borderColor: Theme.of(context).colorScheme.secondary,
        widget: DropdownButton<PlatformObject>(
          key: const Key('home_dropdown_widget-key'),
          isDense: true,
          padding: EdgeInsets.zero,
          dropdownColor: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(4),
          value: dropdownBloc.selectedDropdown,
          icon: Icon(Icons.arrow_drop_down_sharp,color: Theme.of(context).colorScheme.primary),
          underline: const ContainerWidget(
            height: 2,
            color: Colors.transparent,
          ),
          onChanged: (PlatformObject? value) {
            dropdownBloc.add(ChangeDropdownEvent(selectedDropdownValue: value));
          },
          items: dropdownBloc.dropdownList.map<DropdownMenuItem<PlatformObject>>((PlatformObject value) {
            return DropdownMenuItem<PlatformObject>(
              key: const Key('home_dropdown_widget_item-key'),
              value: value,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(capitalizedString(value.platformName),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
