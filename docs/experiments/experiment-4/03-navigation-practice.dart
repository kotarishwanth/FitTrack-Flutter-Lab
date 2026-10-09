import 'package:flutter/material.dart';

class NavigationPracticeButton extends StatelessWidget {
  const NavigationPracticeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute<void>(builder: (_) => const PracticeDestination()),
      ),
      child: const Text('Open practice destination'),
    );
  }
}

class PracticeDestination extends StatelessWidget {
  const PracticeDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Practice destination')),
      body: Center(
        child: FilledButton(onPressed: () => Navigator.pop(context), child: const Text('Return')),
      ),
    );
  }
}
