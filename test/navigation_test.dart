import 'package:flutter_test/flutter_test.dart';
import 'package:fittrack_flutter_lab/main.dart';

void main() {
  testWidgets('FitTrack starts on the dashboard route', (tester) async {
    await tester.pumpWidget(const FitTrackApp());
    await tester.pumpAndSettle();
    expect(find.text('FitTrack'), findsOneWidget);
    expect(find.text('Good day, Athlete'), findsOneWidget);
  });
}
