import 'package:playstation_games_app/dependencies/dependencies_export.dart';

class PlatformObject extends Equatable{
  final String platformId;
  final String platformName;

  const PlatformObject({required this.platformId, required this.platformName});

  @override
  List<Object?> get props => [platformId, platformName];
}
