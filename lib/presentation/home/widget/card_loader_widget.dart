import 'package:flutter/material.dart';
import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/dependencies/dependencies_export.dart';


class CardLoaderWidget extends StatelessWidget {
  const CardLoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
      child: ContainerWidget(
        height: screenHeight(context) / 5.5,
        width: screenWidth(context),
        borderRadius: 10,
        widget: Shimmer.fromColors(
          baseColor: grey2,
          highlightColor: const Color(0xffd6d6d6),
          direction: ShimmerDirection.ltr,
          period: const Duration(milliseconds: 800),
          child: const ContainerWidget(
            color: Color(0xffE5E5E6),
            borderRadius: 10,
          ),
        ),
      ),
    );
  }
}
