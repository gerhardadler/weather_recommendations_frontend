import 'artist_model.dart';
import 'album_model.dart';

class TrackModel {
  final AlbumModel album;
  final List<ArtistModel> artists;
  final int diskNumber;
  final Duration duration;
  final bool explicit;
  final String href;
  final String id;
  final String name;
  final int? popularity;
  final String? previewUrl;
  final int trackNumber;
  final String uri;

  TrackModel({
    required this.album,
    required this.artists,
    required this.diskNumber,
    required this.duration,
    required this.explicit,
    required this.href,
    required this.id,
    required this.name,
    required this.popularity,
    required this.previewUrl,
    required this.trackNumber,
    required this.uri,
  });

  factory TrackModel.fromJson(Map<String, dynamic> json) {
    return TrackModel(
      album: AlbumModel.fromJson(json['album']),
      artists: [
        for (var artistJson in json['artists']) ArtistModel.fromJson(artistJson)
      ],
      diskNumber: json['disc_number'],
      duration: Duration(milliseconds: json['duration_ms']),
      explicit: json['explicit'],
      href: json['href'],
      id: json['id'],
      name: json['name'],
      popularity: json['popularity'],
      previewUrl: json['preview_url'],
      trackNumber: json['track_number'],
      uri: json['uri'],
    );
  }
}
