import 'package:weather_recommendations/static/genres_class.dart';
import 'package:weather_recommendations/models/recommendations_model.dart';

RecommendationsModel getRecommendationsFromWeather(String weatherSymbol) {
  // polar twilight should get same recommendations as daytime
  weatherSymbol = weatherSymbol.replaceAll('_polartwilight', '');

  return weatherRecommendationMap[weatherSymbol];
}

final Map weatherRecommendationMap = {
  'clearsky': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.happy,
      Genres.pop,
      Genres.roadTrip,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'clearsky_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.romance,
      Genres.blues,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'cloudy': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.blues,
      Genres.soul,
      Genres.country,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'fair': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.roadTrip,
      Genres.country,
      Genres.rock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'fair_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.romance,
      Genres.blues,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'fog': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.sad,
      Genres.blues,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavyrain': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.grunge,
      Genres.sad,
      Genres.rainyDay,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavyrainandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.grunge,
      Genres.punkRock,
      Genres.hardRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavyrainshowers': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.blues,
      Genres.rainyDay,
      Genres.country,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavyrainshowers_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.blues,
      Genres.rainyDay,
      Genres.sad,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavyrainshowersandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.metal,
      Genres.deathMetal,
      Genres.hardRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavyrainshowersandthunder_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.sad,
      Genres.metal,
      Genres.hardRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysleet': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.country,
      Genres.blues,
      Genres.rock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysleetandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.sad,
      Genres.metal,
      Genres.rock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysleetshowers': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.country,
      Genres.blues,
      Genres.rock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysleetshowers_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.blues,
      Genres.country,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysleetshowersandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.rock,
      Genres.metal,
      Genres.punkRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysleetshowersandthunder_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.deathMetal,
      Genres.metal,
      Genres.blackMetal,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysnow': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.pop,
      Genres.psychRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysnowandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.metal,
      Genres.hardRock,
      Genres.psychRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysnowshowers': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.metal,
      Genres.hardRock,
      Genres.psychRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysnowshowers_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.psychRock,
      Genres.hardRock,
      Genres.blues,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysnowshowersandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.blackMetal,
      Genres.hardRock,
      Genres.metal,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'heavysnowshowersandthunder_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.blackMetal,
      Genres.deathMetal,
      Genres.metal,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightrain': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.psychRock,
      Genres.pop,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightrainandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.hardRock,
      Genres.psychRock,
      Genres.metal,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightrainshowers': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.psychRock,
      Genres.pop,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightrainshowers_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.psychRock,
      Genres.blues,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightrainshowersandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.hardRock,
      Genres.psychRock,
      Genres.metal,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightrainshowersandthunder_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.sad,
      Genres.psychRock,
      Genres.chill,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightsleet': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.happy,
      Genres.pop,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightsleetandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.rock,
      Genres.happy,
      Genres.metal,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightsleetshowers': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.happy,
      Genres.pop,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightsleetshowers_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.sad,
      Genres.blues,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightsnow': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.happy,
      Genres.pop,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightsnowandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.happy,
      Genres.rock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightsnowshowers': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.happy,
      Genres.pop,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightsnowshowers_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.sad,
      Genres.blues,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightssleetshowersandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.happy,
      Genres.punk,
      Genres.rock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightssleetshowersandthunder_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.sad,
      Genres.punk,
      Genres.rock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightssnowshowersandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.happy,
      Genres.punk,
      Genres.rock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'lightssnowshowersandthunder_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.sad,
      Genres.punk,
      Genres.rock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'partlycloudy': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.psychRock,
      Genres.pop,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'partlycloudy_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.psychRock,
      Genres.pop,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'rain': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.sad,
      Genres.psychRock,
      Genres.chill,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'rainandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.sad,
      Genres.grunge,
      Genres.hardRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'rainshowers': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.sad,
      Genres.psychRock,
      Genres.chill,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'rainshower_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.sad,
      Genres.blues,
      Genres.chill,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'rainshowersandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.sad,
      Genres.grunge,
      Genres.hardRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'rainshowersandthunder_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.blues,
      Genres.hardRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'sleet': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.blues,
      Genres.country,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'sleetandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.metal,
      Genres.punk,
      Genres.rock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'sleetshowers': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.blues,
      Genres.country,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'sleetshowers_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.blues,
      Genres.sad,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'sleetshowersandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.metal,
      Genres.punk,
      Genres.rock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'sleetshowersandthunder_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.metal,
      Genres.punk,
      Genres.blackMetal,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'snow': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.happy,
      Genres.country,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'snowandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.rock,
      Genres.happy,
      Genres.hardRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'snowshowers': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.happy,
      Genres.country,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'snowshowers_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.chill,
      Genres.sad,
      Genres.blues,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'snowshowersandthunder': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.rock,
      Genres.happy,
      Genres.hardRock,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
  'snowshowersandthunder_night': RecommendationsModel(
    limit: 10,
    seedArtists: ['3WrFJ7ztbogyGnTHbHJFl2'],
    seedGenres: [
      Genres.hardRock,
      Genres.sad,
      Genres.blues,
    ],
    seedTracks: ['6dGnYIeXmHdcikdzNNDMm2'],
  ),
};
