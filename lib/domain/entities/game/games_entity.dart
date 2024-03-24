
import 'package:playstation_games_app/dependencies/dependencies_export.dart';

class GamesEntity extends Equatable {
  final int? id;
  final String? name;
  final String? releaseDate;
  final String? backgroundImage;
  final int? metacritic;

  const GamesEntity(
      {this.id, this.name, this.releaseDate, this.backgroundImage, this.metacritic});

  @override
  List<Object?> get props => [
        id,
        name,
        releaseDate,
        backgroundImage,
        metacritic,
      ];
}
