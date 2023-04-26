import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_recommendations/functions/tracks_from_weather_function.dart';
import 'package:weather_recommendations/models/track_model.dart';
import 'package:weather_recommendations/services/spotify_service.dart';
import 'package:weather_recommendations/services/yr_service.dart';

import '../functions/choose_network_image_function.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Position? _currentPosition;
  String? _currentWeatherName;
  List<TrackModel>? _currentTracks;

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                'Location services are disabled. Please enable the services'),
          ),
        );
      }
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Location permissions are denied'),
            ),
          );
        }
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                'Location permissions are permanently denied, we cannot request permissions.'),
          ),
        );
      }
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) return;
    Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    ).then(
      (Position position) {
        setState(() => _currentPosition = position);
        currentWeatherName(
          lat: position.latitude,
          lon: position.longitude,
        ).then(
          (weatherName) => setState(() {
            _currentWeatherName = weatherName;
            getRecommendations(
                    recommendations: weatherRecommendationMap[weatherName])
                .then(
              (value) {
                setState(
                  () => _currentTracks = [
                    for (final trackJson in value['tracks'])
                      TrackModel.fromJson(trackJson)
                  ],
                );
                // print(value);
              },
            );
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather Recommendations'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: _getCurrentPosition,
              child: const Text('Get location'),
            ),
            Text('LAT: ${_currentPosition?.latitude ?? ""}'),
            Text('LNG: ${_currentPosition?.longitude ?? ""}'),
            Text('Weather: ${_currentWeatherName ?? ""}'),
            Expanded(
              child: TrackListView(currentTracks: _currentTracks),
            )
          ],
        ));
  }
}

class TrackListView extends StatelessWidget {
  const TrackListView({
    Key? key,
    required List<TrackModel>? currentTracks,
  })  : _currentTracks = currentTracks,
        super(key: key);

  final List<TrackModel>? _currentTracks;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _currentTracks != null
          ? [
              for (final TrackModel track in _currentTracks!)
                ListTile(
                    title: Text(track.name),
                    subtitle: Text(
                        track.artists.map((artist) => artist.name).join(', ')),
                    leading: track.album.images.isNotEmpty
                        ? chooseNetworkImage(track.album.images)
                        : const Icon(Icons.loop))
            ]
          : [],
    );
  }
}
