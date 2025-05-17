import 'package:cinemax/commons/constants/constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video_response.g.dart';

@JsonSerializable(explicitToJson: true)
class VideoResponse {
  @JsonKey(name: JsonKeys.video1080p)
  final String? video1080p;

  @JsonKey(name: JsonKeys.video720p)
  final String? video720p;

  @JsonKey(name: JsonKeys.video480p)
  final String? video480p;

  @JsonKey(name: JsonKeys.video360p)
  final String? video360p;


  VideoResponse(
      this.video1080p, this.video720p, this.video480p, this.video360p);


  @override
  String toString() {
    return 'VideoResponse{video1080p: $video1080p, video720p: $video720p, video480p: $video480p, video360p: $video360p}';
  }

  factory VideoResponse.fromJson(Map<String, dynamic> json) => _$VideoResponseFromJson(json);
  
  Map<String, dynamic> toJson() => _$VideoResponseToJson(this);
}