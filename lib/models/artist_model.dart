import 'external_image_model.dart';

class ArtistModel {
  final int? followers;
  final List<String>? genres;
  final String href;
  final String id;
  final List<ExternalImageModel>? images;
  final String name;
  final int? popularity;
  final String uri;

  const ArtistModel({
    required this.followers,
    required this.genres,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.popularity,
    required this.uri,
  });

  factory ArtistModel.fromJson(Map<String, dynamic> json) {
    return ArtistModel(
      followers: json['followers']?['total'],
      genres: json['genres']?.cast<String>(),
      href: json['href'],
      id: json['id'],
      images: json['images'] != null
          ? [
              for (var imageJson in json['images'])
                ExternalImageModel.fromJson(imageJson)
            ]
          : null,
      name: json['name'],
      popularity: json['popularity'],
      uri: json['uri'],
    );
  }
}
