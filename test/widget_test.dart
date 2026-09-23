import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:clauluxo_mobile/main.dart';

void main() {
  testWidgets('ClauLuxo responsive home renders', (tester) async {
    await tester.pumpWidget(const ClauLuxoApp());
    await tester.pumpAndSettle();

    expect(find.text('ClauLuxo'), findsWidgets);
    expect(find.byType(OfficialHeroGallery), findsOneWidget);
    expect(find.text('Prendre rendez-vous'), findsOneWidget);

    final scrollable = find.byType(ListView).first;
    await tester.drag(scrollable, const Offset(0, -600));
    await tester.pumpAndSettle();

    expect(find.text('Planifier une séance'), findsWidgets);
  });

  testWidgets('primary navigation exposes four destinations', (tester) async {
    await tester.pumpWidget(const ClauLuxoApp());
    await tester.pumpAndSettle();

    expect(find.text('Accueil'), findsOneWidget);
    expect(find.text('Soins'), findsOneWidget);
    expect(find.text('Rendez-vous'), findsOneWidget);
    expect(find.text('Mon espace'), findsOneWidget);
  });
}
