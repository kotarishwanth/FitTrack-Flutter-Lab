import 'package:flutter/material.dart';

import 'navigation/app_routes.dart';

void main() {
  runApp(const FitTrackApp());
}

class FitTrackApp extends StatelessWidget {
  const FitTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitTrack',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF287D68)),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.dashboard,
      routes: AppRoutes.routes,
    );
  }
}
