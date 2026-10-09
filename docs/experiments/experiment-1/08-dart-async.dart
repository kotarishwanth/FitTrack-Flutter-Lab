Future<int> loadSampleStepCount() async {
  await Future<void>.delayed(const Duration(milliseconds: 100));
  return 4200;
}

Future<void> main() async {
  final steps = await loadSampleStepCount();
  print('Sample steps today: $steps');
}
