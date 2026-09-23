import 'package:flutter_test/flutter_test.dart';

import 'package:clauluxo_mobile/main.dart';

void main() {
  testWidgets('ClauLuxo home page renders', (tester) async {
    await tester.pumpWidget(const ClauLuxoApp());
    expect(find.text('Centre de Luxopuncture'), findsOneWidget);
    expect(find.text('Planifier une séance'), findsOneWidget);
  });
}
