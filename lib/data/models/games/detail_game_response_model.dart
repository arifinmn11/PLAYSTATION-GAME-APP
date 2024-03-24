import 'dart:convert';

import 'package:playstation_games_app/dependencies/dependencies_export.dart';
import 'package:playstation_games_app/domain/entities/game/detail_game_entity.dart';

class GameDetailResponseModel extends Equatable{
  final int? id;
  final String? slug;
  final String? name;
  final String? nameOriginal;
  final String? description;
  final int? metacritic;
  final List<MetacriticPlatform>? metacriticPlatforms;
  final String? released;
  final bool? tba;
  final DateTime? updated;
  final String? backgroundImage;
  final String? backgroundImageAdditional;
  final String? website;
  final double? rating;
  final int? ratingTop;
  final List<Rating>? ratings;
  final int? added;
  final AddedByStatus? addedByStatus;
  final int? playtime;
  final int? screenshotsCount;
  final int? moviesCount;
  final int? creatorsCount;
  final int? achievementsCount;
  final int? parentAchievementsCount;
  final String? redditUrl;
  final String? redditName;
  final String? redditDescription;
  final String? redditLogo;
  final int? redditCount;
  final int? twitchCount;
  final int? youtubeCount;
  final int? reviewsTextCount;
  final int? ratingsCount;
  final int? suggestionsCount;
  final List<dynamic>? alternativeNames;
  final String? metacriticUrl;
  final int? parentsCount;
  final int? additionsCount;
  final int? gameSeriesCount;
  final dynamic userGame;
  final int? reviewsCount;
  final String? saturatedColor;
  final String? dominantColor;
  final List<ParentPlatform>? parentPlatforms;
  final List<PlatformElement>? platforms;
  final List<Store>? stores;
  final List<Developer>? developers;
  final List<Genres>? genres;
  final List<Developer>? publishers;
  final EsrbRating? esrbRating;
  final dynamic clip;
  final String? descriptionRaw;

  const GameDetailResponseModel({
    this.id,
    this.slug,
    this.name,
    this.nameOriginal,
    this.description,
    this.metacritic,
    this.metacriticPlatforms,
    this.released,
    this.tba,
    this.updated,
    this.backgroundImage,
    this.backgroundImageAdditional,
    this.website,
    this.rating,
    this.ratingTop,
    this.ratings,
    this.added,
    this.addedByStatus,
    this.playtime,
    this.screenshotsCount,
    this.moviesCount,
    this.creatorsCount,
    this.achievementsCount,
    this.parentAchievementsCount,
    this.redditUrl,
    this.redditName,
    this.redditDescription,
    this.redditLogo,
    this.redditCount,
    this.twitchCount,
    this.youtubeCount,
    this.reviewsTextCount,
    this.ratingsCount,
    this.suggestionsCount,
    this.alternativeNames,
    this.metacriticUrl,
    this.parentsCount,
    this.additionsCount,
    this.gameSeriesCount,
    this.userGame,
    this.reviewsCount,
    this.saturatedColor,
    this.dominantColor,
    this.parentPlatforms,
    this.platforms,
    this.stores,
    this.developers,
    this.genres,
    this.publishers,
    this.esrbRating,
    this.clip,
    this.descriptionRaw,
  });

  factory GameDetailResponseModel.fromRawJson(String str) => GameDetailResponseModel.fromJson(json.decode(str));

  factory GameDetailResponseModel.fromJson(Map<String, dynamic> json) => GameDetailResponseModel(
    id: json["id"],
    slug: json["slug"],
    name: json["name"],
    nameOriginal: json["name_original"],
    description: json["description"],
    metacritic: json["metacritic"],
    metacriticPlatforms: json["metacritic_platforms"] == null ? [] : List<MetacriticPlatform>.from(json["metacritic_platforms"]!.map((x) => MetacriticPlatform.fromJson(x))),
    released: json["released"],
    tba: json["tba"],
    updated: json["updated"] == null ? null : DateTime.parse(json["updated"]),
    backgroundImage: json["background_image"],
    backgroundImageAdditional: json["background_image_additional"],
    website: json["website"],
    rating: json["rating"]?.toDouble(),
    ratingTop: json["rating_top"],
    ratings: json["ratings"] == null ? [] : List<Rating>.from(json["ratings"]!.map((x) => Rating.fromJson(x))),
    added: json["added"],
    addedByStatus: json["added_by_status"] == null ? null : AddedByStatus.fromJson(json["added_by_status"]),
    playtime: json["playtime"],
    screenshotsCount: json["screenshots_count"],
    moviesCount: json["movies_count"],
    creatorsCount: json["creators_count"],
    achievementsCount: json["achievements_count"],
    parentAchievementsCount: json["parent_achievements_count"],
    redditUrl: json["reddit_url"],
    redditName: json["reddit_name"],
    redditDescription: json["reddit_description"],
    redditLogo: json["reddit_logo"],
    redditCount: json["reddit_count"],
    twitchCount: json["twitch_count"],
    youtubeCount: json["youtube_count"],
    reviewsTextCount: json["reviews_text_count"],
    ratingsCount: json["ratings_count"],
    suggestionsCount: json["suggestions_count"],
    alternativeNames: json["alternative_names"] == null ? [] : List<dynamic>.from(json["alternative_names"]!.map((x) => x)),
    metacriticUrl: json["metacritic_url"],
    parentsCount: json["parents_count"],
    additionsCount: json["additions_count"],
    gameSeriesCount: json["game_series_count"],
    userGame: json["user_game"],
    reviewsCount: json["reviews_count"],
    saturatedColor: json["saturated_color"],
    dominantColor: json["dominant_color"],
    parentPlatforms: json["parent_platforms"] == null ? [] : List<ParentPlatform>.from(json["parent_platforms"]!.map((x) => ParentPlatform.fromJson(x))),
    platforms: json["platforms"] == null ? [] : List<PlatformElement>.from(json["platforms"]!.map((x) => PlatformElement.fromJson(x))),
    stores: json["stores"] == null ? [] : List<Store>.from(json["stores"]!.map((x) => Store.fromJson(x))),
    developers: json["developers"] == null ? [] : List<Developer>.from(json["developers"]!.map((x) => Developer.fromJson(x))),
    genres: json["genres"] == null ? [] : List<Genres>.from(json["genres"]!.map((x) => Genres.fromJson(x))),
    publishers: json["publishers"] == null ? [] : List<Developer>.from(json["publishers"]!.map((x) => Developer.fromJson(x))),
    esrbRating: json["esrb_rating"] == null ? null : EsrbRating.fromJson(json["esrb_rating"]),
    clip: json["clip"],
    descriptionRaw: json["description_raw"],
  );

  GameDetailEntity toEntity() {
    return GameDetailEntity(id: id,
        name: name,
        releaseDate: released,
        backgroundImage: backgroundImage,
        additionalImage: backgroundImageAdditional,
        description: description,
        metacritic: metacritic,
        genres: genres,
    );
  }

  @override
  List<Object> get props => [id!, name!, released!, backgroundImage!, backgroundImageAdditional!, description!, metacritic!, genres!];

}

class AddedByStatus {
  final int? yet;
  final int? owned;
  final int? beaten;
  final int? toplay;
  final int? dropped;
  final int? playing;

  AddedByStatus({
    this.yet,
    this.owned,
    this.beaten,
    this.toplay,
    this.dropped,
    this.playing,
  });

  factory AddedByStatus.fromRawJson(String str) => AddedByStatus.fromJson(json.decode(str));


  factory AddedByStatus.fromJson(Map<String, dynamic> json) => AddedByStatus(
    yet: json["yet"],
    owned: json["owned"],
    beaten: json["beaten"],
    toplay: json["toplay"],
    dropped: json["dropped"],
    playing: json["playing"],
  );
}

class Developer {
  final int? id;
  final String? name;
  final String? slug;
  final int? gamesCount;
  final String? imageBackground;

  Developer({
    this.id,
    this.name,
    this.slug,
    this.gamesCount,
    this.imageBackground,
  });

  factory Developer.fromRawJson(String str) => Developer.fromJson(json.decode(str));

  factory Developer.fromJson(Map<String, dynamic> json) => Developer(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    gamesCount: json["games_count"],
    imageBackground: json["image_background"],
  );
}

class Genres {
  final int? id;
  final String? name;
  final String? slug;
  final int? gamesCount;
  final String? imageBackground;

  Genres({
    this.id,
    this.name,
    this.slug,
    this.gamesCount,
    this.imageBackground,
  });

  factory Genres.fromRawJson(String str) => Genres.fromJson(json.decode(str));

  factory Genres.fromJson(Map<String, dynamic> json) => Genres(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    gamesCount: json["games_count"],
    imageBackground: json["image_background"],
  );
}



class EsrbRating {
  final int? id;
  final String? name;
  final String? slug;

  EsrbRating({
    this.id,
    this.name,
    this.slug,
  });

  factory EsrbRating.fromRawJson(String str) => EsrbRating.fromJson(json.decode(str));


  factory EsrbRating.fromJson(Map<String, dynamic> json) => EsrbRating(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
  );
}

class MetacriticPlatform {
  final int? metascore;
  final String? url;
  final MetacriticPlatformPlatform? platform;

  MetacriticPlatform({
    this.metascore,
    this.url,
    this.platform,
  });

  factory MetacriticPlatform.fromRawJson(String str) => MetacriticPlatform.fromJson(json.decode(str));

  factory MetacriticPlatform.fromJson(Map<String, dynamic> json) => MetacriticPlatform(
    metascore: json["metascore"],
    url: json["url"],
    platform: json["platform"] == null ? null : MetacriticPlatformPlatform.fromJson(json["platform"]),
  );
}

class MetacriticPlatformPlatform {
  final int? platform;
  final String? name;
  final String? slug;

  MetacriticPlatformPlatform({
    this.platform,
    this.name,
    this.slug,
  });

  factory MetacriticPlatformPlatform.fromRawJson(String str) => MetacriticPlatformPlatform.fromJson(json.decode(str));

  factory MetacriticPlatformPlatform.fromJson(Map<String, dynamic> json) => MetacriticPlatformPlatform(
    platform: json["platform"],
    name: json["name"],
    slug: json["slug"],
  );
}

class ParentPlatform {
  final EsrbRating? platform;

  ParentPlatform({
    this.platform,
  });

  factory ParentPlatform.fromRawJson(String str) => ParentPlatform.fromJson(json.decode(str));

  factory ParentPlatform.fromJson(Map<String, dynamic> json) => ParentPlatform(
    platform: json["platform"] == null ? null : EsrbRating.fromJson(json["platform"]),
  );
}

class PlatformElement {
  final PlatformPlatform? platform;
  final DateTime? releasedAt;
  final Requirements? requirements;

  PlatformElement({
    this.platform,
    this.releasedAt,
    this.requirements,
  });

  factory PlatformElement.fromRawJson(String str) => PlatformElement.fromJson(json.decode(str));

  factory PlatformElement.fromJson(Map<String, dynamic> json) => PlatformElement(
    platform: json["platform"] == null ? null : PlatformPlatform.fromJson(json["platform"]),
    releasedAt: json["released_at"] == null ? null : DateTime.parse(json["released_at"]),
    requirements: json["requirements"] == null ? null : Requirements.fromJson(json["requirements"]),
  );
}

class PlatformPlatform {
  final int? id;
  final String? name;
  final String? slug;
  final dynamic image;
  final dynamic yearEnd;
  final int? yearStart;
  final int? gamesCount;
  final String? imageBackground;

  PlatformPlatform({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.yearEnd,
    this.yearStart,
    this.gamesCount,
    this.imageBackground,
  });

  factory PlatformPlatform.fromRawJson(String str) => PlatformPlatform.fromJson(json.decode(str));


  factory PlatformPlatform.fromJson(Map<String, dynamic> json) => PlatformPlatform(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    image: json["image"],
    yearEnd: json["year_end"],
    yearStart: json["year_start"],
    gamesCount: json["games_count"],
    imageBackground: json["image_background"],
  );
}

class Requirements {
  final String? minimum;
  final String? recommended;

  Requirements({
    this.minimum,
    this.recommended,
  });

  factory Requirements.fromRawJson(String str) => Requirements.fromJson(json.decode(str));

  factory Requirements.fromJson(Map<String, dynamic> json) => Requirements(
    minimum: json["minimum"],
    recommended: json["recommended"],
  );
}

class Rating {
  final int? id;
  final String? title;
  final int? count;
  final double? percent;

  Rating({
    this.id,
    this.title,
    this.count,
    this.percent,
  });

  factory Rating.fromRawJson(String str) => Rating.fromJson(json.decode(str));

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    id: json["id"],
    title: json["title"],
    count: json["count"],
    percent: json["percent"]?.toDouble(),
  );
}

class Store {
  final int? id;
  final String? url;
  final Developer? store;

  Store({
    this.id,
    this.url,
    this.store,
  });

  factory Store.fromRawJson(String str) => Store.fromJson(json.decode(str));

  factory Store.fromJson(Map<String, dynamic> json) => Store(
    id: json["id"],
    url: json["url"],
    store: json["store"] == null ? null : Developer.fromJson(json["store"]),
  );
}

