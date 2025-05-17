import 'package:cinemax/commons/constants/constants.dart';
import 'package:cinemax/models/video_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cinema_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CinemaResponse {
  @JsonKey(name: JsonKeys.movie)
  final String? movie;

  @JsonKey(name: JsonKeys.year)
  final int? year;

  @JsonKey(name: JsonKeys.releaseDate)
  final String? releaseDate;

  @JsonKey(name: JsonKeys.director)
  final String? director;

  @JsonKey(name: JsonKeys.character)
  final String? character;

  @JsonKey(name: JsonKeys.movieDuration)
  final String? movieDuration;

  @JsonKey(name: JsonKeys.timestamp)
  final String? timestamp;

  @JsonKey(name: JsonKeys.fullLine)
  final String? fullLine;

  @JsonKey(name: JsonKeys.currentWhoaInMovie)
  final int? currentWhoaInMovie;

  @JsonKey(name: JsonKeys.totalWhoasInMovie)
  final int? totalWhoasInMovie;

  @JsonKey(name: JsonKeys.whoaGrouping)
  final dynamic whoaGrouping;

  @JsonKey(name: JsonKeys.poster)
  final String? poster;

  @JsonKey(name: JsonKeys.video)
  final VideoResponse? video;

  @JsonKey(name: JsonKeys.audio)
  final String? audio;


  CinemaResponse(
      this.movie,
      this.year,
      this.releaseDate,
      this.director,
      this.character,
      this.movieDuration,
      this.timestamp,
      this.fullLine,
      this.currentWhoaInMovie,
      this.totalWhoasInMovie,
      this.whoaGrouping,
      this.poster,
      this.video,
      this.audio);


  @override
  String toString() {
    return 'CinemaResponse{movie: $movie, year: $year, releaseDate: $releaseDate, director: $director, character: $character, movieDuration: $movieDuration, timestamp: $timestamp, fullLine: $fullLine, currentWhoaInMovie: $currentWhoaInMovie, totalWhoasInMovie: $totalWhoasInMovie, whoaGrouping: $whoaGrouping, poster: $poster, video: $video, audio: $audio}';
  }

  factory CinemaResponse.fromJson(Map<String, dynamic> json) =>
      _$CinemaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CinemaResponseToJson(this);
}
