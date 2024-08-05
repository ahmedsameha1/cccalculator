import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import "package:cccalculator/main.dart" as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("web", () {
    testWidgets("Calculates '0+1'", (WidgetTester widgetTester) async {
      app.main();
      await widgetTester.pumpAndSettle();
      await widgetTester.tap(find.widgetWithText(TextButton, "0"));
      await widgetTester.pumpAndSettle();
      expect(find.widgetWithText(Card, "0"), findsOneWidget);
      await widgetTester.tap(find.widgetWithText(TextButton, "+"));
      await widgetTester.pumpAndSettle();
      expect(find.widgetWithText(Card, "0 +"), findsOneWidget);
      await widgetTester.tap(find.widgetWithText(TextButton, "1"));
      await widgetTester.pumpAndSettle();
      expect(find.widgetWithText(Card, "0 + 1"), findsOneWidget);
      await widgetTester.tap(find.widgetWithText(TextButton, "="));
      await widgetTester.pumpAndSettle();
      expect(find.widgetWithText(Card, "1"), findsOneWidget);
    });
  });
}
