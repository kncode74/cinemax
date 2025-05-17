// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CinemaResponse _$CinemaResponseFromJson(Map<String, dynamic> json) =>
    CinemaResponse(
      json['movie'] as String?,
      (json['year'] as num?)?.toInt(),
      json['release_date'] as String?,
      json['director'] as String?,
      json['character'] as String?,
      json['movie_duration'] as String?,
      json['timestamp'] as String?,
      json['full_line'] as String?,
      (json['current_whoa_in_movie'] as num?)?.toInt(),
      (json['total_whoas_in_movie'] as num?)?.toInt(),
      json['whoa_grouping'],
      json['poster'] as String?,
      json['video'] == null
          ? null
          : VideoResponse.fromJson(json['video'] as Map<String, dynamic>),
      json['audio'] as String?,
    );

Map<String, dynamic> _$CinemaResponseToJson(CinemaResponse instance) =>
    <String, dynamic>{
      'movie': instance.movie,
      'year': instance.year,
      'release_date': instance.releaseDate,
      'director': instance.director,
      'character': instance.character,
      'movie_duration': instance.movieDuration,
      'timestamp': instance.timestamp,
      'full_line': instance.fullLine,
      'current_whoa_in_movie': instance.currentWhoaInMovie,
      'total_whoas_in_movie': instance.totalWhoasInMovie,
      'whoa_grouping': instance.whoaGrouping,
      'poster': instance.poster,
      'video': instance.video?.toJson(),
      'audio': instance.audio,
    };
