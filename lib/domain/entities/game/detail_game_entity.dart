
import 'package:playstation_games_app/data/models/games/detail_game_response_model.dart';
import 'package:playstation_games_app/dependencies/dependencies_export.dart';

class GameDetailEntity extends Equatable {
  final int? id;
  final String? name;
  final String? releaseDate;
  final String? backgroundImage;
  final String? additionalImage;
  final String? description;
  final int? metacritic;
  final List<Genres>? genres;


  const GameDetailEntity({
    this.id,
    this.name,
    this.releaseDate,
    this.backgroundImage,
    this.additionalImage,
    this.description,
    this.metacritic,
    this.genres,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        releaseDate,
        backgroundImage,
        additionalImage,
        description,
        metacritic,
        genres
      ];
}
