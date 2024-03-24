import 'package:flutter/material.dart';
import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/presentation/home/bloc/genres/genres_bloc.dart';

class HomeGenresWidget extends StatelessWidget {
  final GenresBloc genresBloc;
  const HomeGenresWidget({super.key, required this.genresBloc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            genresBloc.genres.length,
                (index) {
                return Padding(
                  padding: index == 0 ? const EdgeInsets.only(right: 8) : const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () =>  genresBloc.add(ChangeSelectedGenre(selectedGenre: genresBloc.genres[index])),
                    child: ContainerWidget(
                        isBordered: genresBloc.genres[index] == genresBloc.selectedGenre? true : false,
                        borderColor: Theme.of(context).colorScheme.secondary,
                        borderWidth: 1,
                        borderRadius: 4,
                        color: genresBloc.genres[index] == genresBloc.selectedGenre? Theme.of(context).colorScheme.primary:
                            Theme.of(context).colorScheme.secondary,
                        widget: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            capitalizedString(genresBloc.genres[index]),
                            style: genresBloc.genres[index] == genresBloc.selectedGenre? Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.secondary) :
                            Theme.of(context).textTheme.bodySmall!.copyWith(color:Theme.of(context).colorScheme.primary),
                          ),
                        ),
                    ),
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
