import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:playstation_games_app/domain/entities/game/games_entity.dart';

class GamesResponseModel extends Equatable{
  final int? count;
  final String? next;
  final dynamic previous;
  final List<Result>? results;
  final bool? userPlatforms;

  const GamesResponseModel({
    this.count,
    this.next,
    this.previous,
    this.results,
    this.userPlatforms,
  });

  factory GamesResponseModel.fromRawJson(String str) => GamesResponseModel.fromJson(json.decode(str));

  factory GamesResponseModel.fromJson(Map<String, dynamic> json) => GamesResponseModel(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    results: json["results"] == null ? [] : List<Result>.from(json["results"]!.map((x) => Result.fromJson(x))),
    userPlatforms: json["user_platforms"],
  );

  List<GamesEntity> toEntity() {
    return results!.map((x) => GamesEntity(
      id: x.id,
      name: x.name,
      releaseDate: x.released,
      backgroundImage: x.backgroundImage,
      metacritic: x.metacritic,
    )).toList();
  }

  @override
  List<Object> get props => [results!];
}

class Result {
  final String? slug;
  final String? name;
  final int? playtime;
  final List<Platform>? platforms;
  final List<Store>? stores;
  final String? released;
  final bool? tba;
  final String? backgroundImage;
  final double? rating;
  final int? ratingTop;
  final List<Rating>? ratings;
  final int? ratingsCount;
  final int? reviewsTextCount;
  final int? added;
  final AddedByStatus? addedByStatus;
  final int? metacritic;
  final int? suggestionsCount;
  final DateTime? updated;
  final int? id;
  final dynamic score;
  final dynamic clip;
  final List<Tag>? tags;
  final EsrbRating? esrbRating;
  final dynamic userGame;
  final int? reviewsCount;
  final String? saturatedColor;
  final String? dominantColor;
  final List<ShortScreenshot>? shortScreenshots;
  final List<Platform>? parentPlatforms;
  final List<Genre>? genres;
  final int? communityRating;

   Result({
    this.slug,
    this.name,
    this.playtime,
    this.platforms,
    this.stores,
    this.released,
    this.tba,
    this.backgroundImage,
    this.rating,
    this.ratingTop,
    this.ratings,
    this.ratingsCount,
    this.reviewsTextCount,
    this.added,
    this.addedByStatus,
    this.metacritic,
    this.suggestionsCount,
    this.updated,
    this.id,
    this.score,
    this.clip,
    this.tags,
    this.esrbRating,
    this.userGame,
    this.reviewsCount,
    this.saturatedColor,
    this.dominantColor,
    this.shortScreenshots,
    this.parentPlatforms,
    this.genres,
    this.communityRating,
  });

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    slug: json["slug"],
    name: json["name"],
    playtime: json["playtime"],
    platforms: json["platforms"] == null ? [] : List<Platform>.from(json["platforms"]!.map((x) => Platform.fromJson(x))),
    stores: json["stores"] == null ? [] : List<Store>.from(json["stores"]!.map((x) => Store.fromJson(x))),
    released: json["released"],
    tba: json["tba"],
    backgroundImage: json["background_image"],
    rating: json["rating"]?.toDouble(),
    ratingTop: json["rating_top"],
    ratings: json["ratings"] == null ? [] : List<Rating>.from(json["ratings"]!.map((x) => Rating.fromJson(x))),
    ratingsCount: json["ratings_count"],
    reviewsTextCount: json["reviews_text_count"],
    added: json["added"],
    addedByStatus: json["added_by_status"] == null ? null : AddedByStatus.fromJson(json["added_by_status"]),
    metacritic: json["metacritic"],
    suggestionsCount: json["suggestions_count"],
    updated: json["updated"] == null ? null : DateTime.parse(json["updated"]),
    id: json["id"],
    score: json["score"],
    clip: json["clip"],
    tags: json["tags"] == null ? [] : List<Tag>.from(json["tags"]!.map((x) => Tag.fromJson(x))),
    esrbRating: json["esrb_rating"] == null ? null : EsrbRating.fromJson(json["esrb_rating"]),
    userGame: json["user_game"],
    reviewsCount: json["reviews_count"],
    saturatedColor: json["saturated_color"]!,
    dominantColor: json["dominant_color"]!,
    shortScreenshots: json["short_screenshots"] == null ? [] : List<ShortScreenshot>.from(json["short_screenshots"]!.map((x) => ShortScreenshot.fromJson(x))),
    parentPlatforms: json["parent_platforms"] == null ? [] : List<Platform>.from(json["parent_platforms"]!.map((x) => Platform.fromJson(x))),
    genres: json["genres"] == null ? [] : List<Genre>.from(json["genres"]!.map((x) => Genre.fromJson(x))),
    communityRating: json["community_rating"],
  );
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


class EsrbRating {
  final int? id;
  final String? name;
  final String? slug;
  final String? nameEn;
  final String? nameRu;

  EsrbRating({
    this.id,
    this.name,
    this.slug,
    this.nameEn,
    this.nameRu,
  });

  factory EsrbRating.fromRawJson(String str) => EsrbRating.fromJson(json.decode(str));

  factory EsrbRating.fromJson(Map<String, dynamic> json) => EsrbRating(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    nameEn: json["name_en"],
    nameRu: json["name_ru"],
  );
}

class Genre {
  final int? id;
  final String? name;
  final String? slug;

  Genre({
    this.id,
    this.name,
    this.slug,
  });

  factory Genre.fromRawJson(String str) => Genre.fromJson(json.decode(str));

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
  );
}

class Platform {
  final Genre? platform;

  Platform({
    this.platform,
  });

  factory Platform.fromRawJson(String str) => Platform.fromJson(json.decode(str));

  factory Platform.fromJson(Map<String, dynamic> json) => Platform(
    platform: json["platform"] == null ? null : Genre.fromJson(json["platform"]),
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
    title: json["title"]!,
    count: json["count"],
    percent: json["percent"]?.toDouble(),
  );
}

class ShortScreenshot {
  final int? id;
  final String? image;

  ShortScreenshot({
    this.id,
    this.image,
  });

  factory ShortScreenshot.fromRawJson(String str) => ShortScreenshot.fromJson(json.decode(str));

  factory ShortScreenshot.fromJson(Map<String, dynamic> json) => ShortScreenshot(
    id: json["id"],
    image: json["image"],
  );
}

class Store {
  final Genre? store;

  Store({
    this.store,
  });

  factory Store.fromRawJson(String str) => Store.fromJson(json.decode(str));

  factory Store.fromJson(Map<String, dynamic> json) => Store(
    store: json["store"] == null ? null : Genre.fromJson(json["store"]),
  );
}

class Tag {
  final int? id;
  final String? name;
  final String? slug;
  final String? language;
  final int? gamesCount;
  final String? imageBackground;

  Tag({
    this.id,
    this.name,
    this.slug,
    this.language,
    this.gamesCount,
    this.imageBackground,
  });

  factory Tag.fromRawJson(String str) => Tag.fromJson(json.decode(str));

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    language: json["language"]!,
    gamesCount: json["games_count"],
    imageBackground: json["image_background"],
  );
}