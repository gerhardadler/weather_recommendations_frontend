import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_recommendations/providers/theme_provider.dart';
import 'package:weather_recommendations/screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Recommendations',
      theme: ThemeData(
        primarySwatch: context.watch<ThemeProvider>().primaryColor,
      ),
      home: HomeScreen(),
    );
  }
}
