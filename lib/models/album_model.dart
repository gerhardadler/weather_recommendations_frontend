import 'artist_model.dart';
import 'track_model.dart';

import 'external_image_model.dart';

class AlbumModel {
  final List<ArtistModel> artists;
  final String href;
  final String id;
  final List<ExternalImageModel> images;
  final String name;
  final DateTime releaseDate;
  final int totalTracks;
  final String uri;

  AlbumModel({
    required this.artists,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.releaseDate,
    required this.totalTracks,
    required this.uri,
    tracks,
  });

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    final List<int> releaseDateList =
        json['release_date'].split('-').map(int.parse).toList().cast<int>();

    late DateTime releaseDate;
    switch (json['release_date_precision']) {
      case 'year':
        releaseDate = DateTime.utc(releaseDateList[0]);
        break;
      case 'month':
        releaseDate = DateTime.utc(releaseDateList[0], releaseDateList[1]);
        break;
      case 'day':
        releaseDate = DateTime.utc(
            releaseDateList[0], releaseDateList[1], releaseDateList[2]);
        break;
    }

    List<TrackModel>? tracks;
    if (json['tracks'] != null) {
      for (Map<String, dynamic> trackJson in json['tracks']['items']) {
        trackJson['album'] = {...json};
        trackJson['album']['tracks'] = null; // to avoid infinite loop
        TrackModel.fromJson(trackJson);
      }
    }

    return AlbumModel(
      artists: [
        for (var artistJson in json['artists']) ArtistModel.fromJson(artistJson)
      ],
      href: json['href'],
      id: json['id'],
      images: [
        for (var imageJson in json['images'])
          ExternalImageModel.fromJson(imageJson)
      ],
      name: json['name'],
      releaseDate: releaseDate,
      totalTracks: json['total_tracks'],
      uri: json['uri'],
      tracks: tracks,
    );
  }
}
