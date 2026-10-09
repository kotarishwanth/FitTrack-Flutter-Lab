import 'package:flutter/material.dart';

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
      home: const FitTrackHomePage(),
    );
  }
}

class FitTrackHomePage extends StatelessWidget {
  const FitTrackHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FitTrack')),
      body: const Center(
        child: Text(
          'Your daily fitness, nutrition, and hydration overview.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
