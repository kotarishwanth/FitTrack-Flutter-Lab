import 'package:flutter_test/flutter_test.dart';
import 'package:fittrack_flutter_lab/main.dart';

void main() {
  testWidgets('FitTrack app displays its dashboard', (tester) async {
    await tester.pumpWidget(const FitTrackApp());
    expect(find.text('FitTrack'), findsOneWidget);
  });
}
