import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/presentation/bottom_navigation/bottom_navigation.dart';
import 'package:playstation_games_app/presentation/home/page/home_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  final List<Widget> pages = [
     const HomePage(
      key: PageStorageKey('HomePage'),
    ),
     Container(
      key: PageStorageKey('SettingPage'),
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return HomePage();


    //   BlocProvider<BottomNavigationBloc>(
    //   create: (_) => BottomNavigationBloc()..add(const InitialIndexBottomNavigation(selectedIndex: 0)),
    //   child: BlocConsumer<BottomNavigationBloc, BottomNavigationState>(
    //     listener: (contextBottomNavigation, stateBottomNavigation) {},
    //     builder: (contextBottomNavigation, stateBottomNavigation) {
    //       if (stateBottomNavigation is InitialIndexBottomNavigationOnSuccess) {
    //         return Scaffold(
    //           body: PageStorage(
    //             bucket: bucket,
    //             child: pages[context.read<BottomNavigationBloc>().selectedBottomNavigationIndex],
    //           ),
    //         );
    //       }
    //
    //       return emptyWidget;
    //     },
    //   ),
    // );
  }
}


