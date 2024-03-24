import 'package:flutter/material.dart';
import 'package:playstation_games_app/presentation/home/bloc/game/game_bloc.dart';
import 'package:playstation_games_app/presentation/home/widget/widget.dart';


class HomeGamesWidget extends StatelessWidget {
  final GameBloc gameBloc;
  const HomeGamesWidget({super.key, required this.gameBloc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
      child: ListView.builder(shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: gameBloc.games.length,
        itemBuilder: (context, index){
          return HomeGamesCardWidget(gameResult: gameBloc.games[index]);
          // Text(gamesCubit.gamesResult[index].name!,
          //     style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.secondary));
        },
      ),
    );
  }
}
