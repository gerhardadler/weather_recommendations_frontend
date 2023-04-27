import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_recommendations/providers/theme_provider.dart';

class CustomizeScreen extends StatefulWidget {
  const CustomizeScreen({super.key});

  @override
  State<CustomizeScreen> createState() => _CustomizeScreenState();
}

class _CustomizeScreenState extends State<CustomizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Color')),
      body: ListView.builder(
        itemCount: Colors.primaries.length,
        itemBuilder: (context, index) {
          return ListTile(
            // title: const Text('Lafayette'),
            tileColor: Colors.primaries[index],
            onTap: () => context.read<ThemeProvider>().primaryColor =
                Colors.primaries[index],
          );
        },
      ),
    );
  }
}
