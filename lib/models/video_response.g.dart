// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoResponse _$VideoResponseFromJson(Map<String, dynamic> json) =>
    VideoResponse(
      json['1080p'] as String?,
      json['720p'] as String?,
      json['480p'] as String?,
      json['360p'] as String?,
    );

Map<String, dynamic> _$VideoResponseToJson(VideoResponse instance) =>
    <String, dynamic>{
      '1080p': instance.video1080p,
      '720p': instance.video720p,
      '480p': instance.video480p,
      '360p': instance.video360p,
    };
