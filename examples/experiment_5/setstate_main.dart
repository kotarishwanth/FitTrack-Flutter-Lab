import 'package:flutter/material.dart';

void main() => runApp(const StateManagementDemo());

class StateManagementDemo extends StatelessWidget {
  const StateManagementDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Experiment 5 - setState',
      theme: ThemeData(colorSchemeSeed: const Color(0xFF287D68)),
      home: const StepCounterScreen(),
    );
  }
}

class StepCounterScreen extends StatefulWidget {
  const StepCounterScreen({super.key});

  @override
  State<StepCounterScreen> createState() => _StepCounterScreenState();
}

class _StepCounterScreenState extends State<StepCounterScreen> {
  int steps = 0;

  void addSteps() {
    setState(() {
      steps += 100;
    });
  }

  void resetSteps() {
    setState(() {
      steps = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FitTrack Step Counter')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.directions_walk, size: 64),
            const SizedBox(height: 16),
            Text('$steps steps', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: addSteps, child: const Text('Add 100 steps')),
            TextButton(onPressed: resetSteps, child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}
