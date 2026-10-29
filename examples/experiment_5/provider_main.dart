import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => WaterCounter(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProviderWaterScreen(),
      ),
    ),
  );
}

class WaterCounter extends ChangeNotifier {
  int amountMl = 0;
  void addCup() {
    amountMl += 250;
    notifyListeners();
  }
  void reset() {
    amountMl = 0;
    notifyListeners();
  }
}

class ProviderWaterScreen extends StatelessWidget {
  const ProviderWaterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final water = context.watch<WaterCounter>();
    return Scaffold(
      appBar: AppBar(title: const Text('Experiment 5: Provider')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.water_drop, size: 64, color: Colors.blue),
            const Text('Daily Water Intake'),
            Text('${water.amountMl} / 2500 ml',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.read<WaterCounter>().addCup(),
              child: const Text('Add 250 ml'),
            ),
            TextButton(
              onPressed: () => context.read<WaterCounter>().reset(),
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
