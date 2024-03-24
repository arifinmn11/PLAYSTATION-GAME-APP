# PS Games Application
Simple application for searching game PS 5 and PS 4 by @rkmaul

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Library](#library)
* [Project Tree](#project-tree)
* [Setup](#setup)
* [Screenshot](#screenshot)

## General info
Simple application for searching game PS 5 and PS 4 using clean architecture and Bloc state management, this application use API from API-RAWG (https://api.rawg.io/)

## Technologies
Project is created with:
* Dart SDK version: 3.2.6 (stable)
* Flutter 3.16.9 • channel stable • https://github.com/flutter/flutter.git

## Library
| Name                 | Description                                                                                                   | Url                                           |
|----------------------|---------------------------------------------------------------------------------------------------------------|-----------------------------------------------|
| dio                  | A powerful HTTP networking package for Dart/Flutter.                                                          | https://pub.dev/packages/dio                  |
| equatable            | Being able to compare objects in Dart often involves having to override the == operator as well as hashCode.  | https://pub.dev/packages/equatable            |
| flutter_bloc         | State management package.                                                                                     | https://pub.dev/packages/flutter_bloc         |
| bloc_test            | Unit test for bloc and cubit.                                                                                 | https://pub.dev/packages/bloc_test            |
| get_it               | This is a simple Service Locator for Dart and Flutter.                                                        | https://pub.dev/packages/get_it               |
| dartz                | Functional programming in Dart.                                                                               | https://pub.dev/packages/dartz                |
| intl                 | Provides internationalization and localization facilities.                                                    | https://pub.dev/packages/intl                 |
| hive                 | Powerful local database.                                                                                      | https://pub.dev/packages/hive                 |
| hive_flutter         | Subset hive.                                                                                                  | https://pub.dev/packages/hive_flutter         |
| flutter_html         | Render HTML tag                                                                                               | https://pub.dev/packages/flutter_html         |
| shimmer              | Beauty loader widget for load widget, image, etc.                                                             | https://pub.dev/packages/shimmer              |
| flutter_svg          | Render image with .svg extension file.                                                                        | https://pub.dev/packages/flutter_svg          |
| pull_to_refresh      | A widget provided to the flutter scroll component drop-down refresh and pull up load.support android and ios. | https://pub.dev/packages/pull_to_refresh      |
| cached_network_image | A flutter library to show images from the internet and keep them in the cache directory.                      | https://pub.dev/packages/cached_network_image |


## Project Tree
```bash
.
├── common                      # Common folder for reusable widget, function, and others (helpers, constants, utils, etc.).
├── data                        # Data sources.
├── dependencies                # Dependencies Injection and Dependencies Export.
├── domain                      # Interface data sources to use case.
├── presentation                # User interface.
├── route                       # Route.
├── app.dart                    # The first class for create user interface.
├── main.dart                   # The main function serves as the starting point for program execution. Controls program execution by directing the calls to other functions in the program.
├── test                        # Test files (cubit test, widget test, function test, etc.)
.
```

## Setup
After you clone this project, try to run it:

```
$ flutter pub get
$ flutter run
```

## Screenshot
![SS_HOME_ONE](https://github.com/rkmaul/playstation_five_games_app/assets/37688437/d4cd89b5-4608-4799-89cd-07bd9b00985a)

![SS_HOME_TWO](https://github.com/rkmaul/playstation_five_games_app/assets/37688437/fbae6b36-73e7-46ed-966e-49aff2f2d209)

![SS_DETAIL_ONE](https://github.com/rkmaul/playstation_five_games_app/assets/37688437/5decf6af-bec2-4f11-818e-a5604a4d7ea0)

![SS_DETAIL_TWO](https://github.com/rkmaul/playstation_five_games_app/assets/37688437/b4b4bf69-4e01-4b5b-866a-3c55314095c7)