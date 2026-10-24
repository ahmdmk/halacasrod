import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:hala_casrod_app/main.dart';

void main() {
  testWidgets('App launches successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: HalaCasrodApp()));

    // Verify that the splash screen loads
    expect(find.text('Hala Casrod'), findsOneWidget);
    expect(find.text('GRAND FEST - 25'), findsOneWidget);
  });
}