import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:clauluxo_mobile/main.dart';

void main() {
  testWidgets('ClauLuxo home page renders', (tester) async {
    await tester.pumpWidget(const ClauLuxoApp());
    await tester.pumpAndSettle();

    expect(find.text('Centre de Luxopuncture'), findsOneWidget);
    expect(find.byType(OfficialHeroGallery), findsOneWidget);

    final scrollable = find.byType(ListView).first;
    await tester.drag(scrollable, const Offset(0, -600));
    await tester.pumpAndSettle();

    expect(find.text('Planifier une séance'), findsOneWidget);
  });
}
