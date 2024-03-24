import 'package:flutter/material.dart';
import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/dependencies/dependencies_export.dart';
import 'package:playstation_games_app/domain/entities/game/games_entity.dart';

class HomeGamesCardWidget extends StatelessWidget {
  final GamesEntity gameResult;
  const HomeGamesCardWidget({super.key, required this.gameResult});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        // onTap: () => Navigator.pushNamed(context, 'routeDetailGame', arguments: gameResult.id),
        onTap: null,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ContainerWidget(
              height: screenHeight(context) / 4,
              width: screenWidth(context),
              borderRadius: 10,
              widget: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: gameResult.backgroundImage == null? noImage : gameResult.backgroundImage!,
                  placeholder: (context, url) => ContainerWidget(
                    height: screenHeight(context) / 4,
                    width: screenWidth(context),
                    borderRadius: 10,
                    widget: Shimmer.fromColors(
                        baseColor: grey2,
                        highlightColor: const Color(0xffd6d6d6),
                        direction: ShimmerDirection.ltr,
                        period: const Duration(milliseconds: 800),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: const BoxDecoration(color: Color(0xffE5E5E6)),
                          ),
                        ))
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ContainerWidget(
                color: Theme.of(context).colorScheme.secondary,
                width: screenWidth(context),
                borderRadius: 10,
                widget: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(gameResult.name!,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.primary),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Release date : ${formatDateTimeText(DateTime.parse(gameResult.releaseDate!))}',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.primary),
                          ),
                          ContainerWidget(
                            isBordered: true,
                            borderWidth: 2,
                            borderColor: Theme.of(context).colorScheme.onPrimary,
                            borderRadius: 4,
                            widget: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Text(gameResult.metacritic != null? gameResult.metacritic.toString() : "No Review",
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
