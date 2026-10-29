import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: AnimationDemo(),
));

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({super.key});
  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> {
  bool expanded = false;
  bool visible = true;
  bool slideAway = false;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Experiment 8: Animations')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: visible ? 1 : 0,
            duration: const Duration(milliseconds: 500),
            child: AnimatedSlide(
              offset: slideAway ? const Offset(0, 1.2) : Offset.zero,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: GestureDetector(
                onTap: () => setState(() => expanded = !expanded),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  width: expanded ? 280 : 180,
                  height: expanded ? 200 : 130,
                  decoration: BoxDecoration(
                    color: expanded ? Colors.teal : Colors.blue,
                    borderRadius: BorderRadius.circular(expanded ? 28 : 12),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fitness_center, color: Colors.white, size: 42),
                      SizedBox(height: 12),
                      Text('FitTrack Workout', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      Text('Tap to resize', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 8,
            children: [
              ElevatedButton(
                onPressed: () => setState(() => visible = !visible),
                child: Text(visible ? 'Fade Out' : 'Fade In'),
              ),
              ElevatedButton(
                onPressed: () => setState(() => slideAway = !slideAway),
                child: Text(slideAway ? 'Slide In' : 'Slide Out'),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
