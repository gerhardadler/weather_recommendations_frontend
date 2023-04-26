import 'package:weather_recommendations/static/genres_class.dart';

class RecommendationsModel {
  final num limit;
  final List<String> seedArtists;
  final List<String> seedGenres;
  final List<String> seedTracks;
  final num? minAcousticness;
  final num? maxAcousticness;
  final num? targetAcousticness;
  final num? minDanceability;
  final num? maxDanceability;
  final num? targetDanceability;
  final num? minDurationMs;
  final num? maxDurationMs;
  final num? targetDurationMs;
  final num? minEnergy;
  final num? maxEnergy;
  final num? targetEnergy;
  final num? minInstrumentalness;
  final num? maxInstrumentalness;
  final num? targetInstrumentalness;
  final num? minKey;
  final num? maxKey;
  final num? targetKey;
  final num? minLiveness;
  final num? maxLiveness;
  final num? targetLiveness;
  final num? minLoudness;
  final num? maxLoudness;
  final num? targetLoudness;
  final num? minMode;
  final num? maxMode;
  final num? targetMode;
  final num? minPopularity;
  final num? maxPopularity;
  final num? targetPopularity;
  final num? minSpeechiness;
  final num? maxSpeechiness;
  final num? targetSpeechiness;
  final num? minTempo;
  final num? maxTempo;
  final num? targetTempo;
  final num? minTimeSignature;
  final num? maxTimeSignature;
  final num? targetTimeSignature;
  final num? minValence;
  final num? maxValence;
  final num? targetValence;

  RecommendationsModel({
    required this.limit,
    required this.seedArtists,
    required this.seedGenres,
    required this.seedTracks,
    this.minAcousticness,
    this.maxAcousticness,
    this.targetAcousticness,
    this.minDanceability,
    this.maxDanceability,
    this.targetDanceability,
    this.minDurationMs,
    this.maxDurationMs,
    this.targetDurationMs,
    this.minEnergy,
    this.maxEnergy,
    this.targetEnergy,
    this.minInstrumentalness,
    this.maxInstrumentalness,
    this.targetInstrumentalness,
    this.minKey,
    this.maxKey,
    this.targetKey,
    this.minLiveness,
    this.maxLiveness,
    this.targetLiveness,
    this.minLoudness,
    this.maxLoudness,
    this.targetLoudness,
    this.minMode,
    this.maxMode,
    this.targetMode,
    this.minPopularity,
    this.maxPopularity,
    this.targetPopularity,
    this.minSpeechiness,
    this.maxSpeechiness,
    this.targetSpeechiness,
    this.minTempo,
    this.maxTempo,
    this.targetTempo,
    this.minTimeSignature,
    this.maxTimeSignature,
    this.targetTimeSignature,
    this.minValence,
    this.maxValence,
    this.targetValence,
  });

  Map<String, String> toStringMap() {
    Map<String, String> map = {
      'limit': limit.toString(),
      'seed_artists': seedArtists.join(','),
      'seed_genres': seedGenres.join(','),
      'seed_tracks': seedTracks.join(','),
      'min_acousticness': minAcousticness.toString(),
      'max_acousticness': maxAcousticness.toString(),
      'target_acousticness': targetAcousticness.toString(),
      'min_danceability': minDanceability.toString(),
      'max_danceability': maxDanceability.toString(),
      'target_danceability': targetDanceability.toString(),
      'min_duration_ms': minDurationMs.toString(),
      'max_duration_ms': maxDurationMs.toString(),
      'target_duration_ms': targetDurationMs.toString(),
      'min_energy': minEnergy.toString(),
      'max_energy': maxEnergy.toString(),
      'target_energy': targetEnergy.toString(),
      'min_instrumentalness': minInstrumentalness.toString(),
      'max_instrumentalness': maxInstrumentalness.toString(),
      'target_instrumentalness': targetInstrumentalness.toString(),
      'min_key': minKey.toString(),
      'max_key': maxKey.toString(),
      'target_key': targetKey.toString(),
      'min_liveness': minLiveness.toString(),
      'max_liveness': maxLiveness.toString(),
      'target_liveness': targetLiveness.toString(),
      'min_loudness': minLoudness.toString(),
      'max_loudness': maxLoudness.toString(),
      'target_loudness': targetLoudness.toString(),
      'min_mode': minMode.toString(),
      'max_mode': maxMode.toString(),
      'target_mode': targetMode.toString(),
      'min_popularity': minPopularity.toString(),
      'max_popularity': maxPopularity.toString(),
      'target_popularity': targetPopularity.toString(),
      'min_speechiness': minSpeechiness.toString(),
      'max_speechiness': maxSpeechiness.toString(),
      'target_speechiness': targetSpeechiness.toString(),
      'min_tempo': minTempo.toString(),
      'max_tempo': maxTempo.toString(),
      'target_tempo': targetTempo.toString(),
      'min_time_signature': minTimeSignature.toString(),
      'max_time_signature': maxTimeSignature.toString(),
      'target_time_signature': targetTimeSignature.toString(),
      'min_valence': minValence.toString(),
      'max_valence': maxValence.toString(),
      'target_valence': targetValence.toString(),
    };
    map.removeWhere((key, value) => value == 'null');
    return map;
  }

  String toQueryString() {
    return Uri(queryParameters: toStringMap()).query;
  }
}
