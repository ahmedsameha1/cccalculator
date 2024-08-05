import 'package:cccalculator/widgets/app_widget.dart';
import 'package:cccalculator/widgets/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Test the precense of the main widgets",
      (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(const App());
    expect(
        find.descendant(
            of: find.byType(App), matching: find.byType(MaterialApp)),
        findsOneWidget);
    expect(
        find.descendant(
            of: find.byType(MaterialApp), matching: find.byType(Center)),
        findsOneWidget);
    final sizedBoxFinder = find.byType(SizedBox);
    expect(find.descendant(of: find.byType(Center), matching: sizedBoxFinder),
        findsOneWidget);
    final sizedBox = widgetTester.widget<SizedBox>(sizedBoxFinder);
    expect(sizedBox.width, 200);
    expect(sizedBox.height, 100);
    expect(
        find.descendant(
            of: find.byType(SizedBox), matching: find.byType(Calculator)),
        findsOneWidget);
  });
}
