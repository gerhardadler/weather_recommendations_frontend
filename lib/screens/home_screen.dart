import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_recommendations/services/yr_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Position? _currentPosition;
  String? _currentWeatherName;

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
          (weatherName) => setState(() => _currentWeatherName = weatherName),
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
          ],
        ));
  }
}
