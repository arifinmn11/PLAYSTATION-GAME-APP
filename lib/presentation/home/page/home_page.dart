import 'package:flutter/material.dart';
import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/common/object/object.dart';
import 'package:playstation_games_app/dependencies/dependencies_export.dart';
import 'package:playstation_games_app/presentation/home/bloc/dropdown/dropdown_bloc.dart';
import 'package:playstation_games_app/presentation/home/bloc/game/game_bloc.dart';
import 'package:playstation_games_app/presentation/home/bloc/genres/genres_bloc.dart';
import 'package:playstation_games_app/presentation/home/widget/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RefreshController _controller = RefreshController(initialRefresh: false);
  late DropdownBloc? _dropdownBloc;
  late GenresBloc? _genresBloc;
  late GameBloc? _gamesBloc;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        body: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => DropdownBloc()..add(const InitialDropdownEvent(selectedDropdownValue: PlatformObject(platformId: '187', platformName: 'playstation5')))),
            BlocProvider(create: (context) => GenresBloc()..add(const InitialGenre(selectedGenre: 'all'))),
            BlocProvider(create: (context) => getIt<GameBloc>()..add(const GetGames(platformId: '187', genre: 'all'))),
          ],
          child: SmartRefresher(
            controller: _controller,
            enablePullDown: true,
            enablePullUp: true,
            header: const MaterialClassicHeader(
              color: grey2,
              backgroundColor: white1,
            ),
            footer: const ClassicFooter(
              idleText: '',
              loadingText: '',
              loadStyle: LoadStyle.ShowWhenLoading,
              completeDuration: Duration(milliseconds: 1000),
            ),
            onRefresh: _onRefresh,
            onLoading: _onLoad,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeHeaderWidget(),
                    const HomeWelcomeWidget(),
                    BlocConsumer<DropdownBloc, DropdownState>(
                      listener: (contextDropdown, stateDropdown) {
                        if(stateDropdown is ChangeSelectedDropdownOnSuccess){
                          _gamesBloc!.add(ClearGameValue());
                        }
                      },
                      builder: (contextDropdown, stateDropdown) {
                        _dropdownBloc = contextDropdown.read<DropdownBloc>();
                          return HomeDropdownWidget(dropdownBloc: _dropdownBloc!);
                      },
                    ),
                    BlocConsumer<GenresBloc, GenresState>(
                      listener: (contextGenres, stateGenres) {
                        if (stateGenres is ChangeSelectedGenre) {
                          _gamesBloc!.add(ClearGameValue());
                        }
                      },
                      builder: (contextGenres, stateGenres) {
                        _genresBloc = contextGenres.read<GenresBloc>();
                          return HomeGenresWidget(genresBloc: _genresBloc!);
                      },
                    ),
                    BlocConsumer<GameBloc, GameState>(
                      listener: (contextGame, stateGame) {
                        if(stateGame is ClearGameValueOnSuccess){
                          _gamesBloc!.add(GetGames(genre: _genresBloc!.selectedGenre,platformId: _dropdownBloc!.selectedDropdown.platformId));
                        }
                      },
                      builder: (contextGame, stateGame) {
                        _gamesBloc = contextGame.read<GameBloc>();
                        if (stateGame is GetGamesOnLoading && _gamesBloc!.firstLoad == true) {
                          return const CardLoaderWidget();
                        }

                        if (stateGame is GetGamesOnError) {
                          if(_gamesBloc!.games.isEmpty) {
                            return const Text('Error get games');
                          } else {
                            return HomeGamesWidget(gameBloc: _gamesBloc!);
                          }
                        }

                       return HomeGamesWidget(gameBloc: _gamesBloc!);
                      },
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  void _onRefresh() async {
    _controller.position!.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.ease);
    _gamesBloc!.add(ClearGameValue());
    await Future.delayed(const Duration(seconds: 1));
    _controller.refreshCompleted();
  }

  void _onLoad() async {
    _gamesBloc!.add(GetGames(genre: _genresBloc!.selectedGenre,platformId: _dropdownBloc!.selectedDropdown.platformId));
    await Future.delayed(const Duration(seconds: 1));
    _controller.loadComplete();
  }
}
