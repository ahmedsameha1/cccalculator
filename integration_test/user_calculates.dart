import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import "package:cccalculator/main.dart" as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("web", () {
    testWidgets("Calculates '2+2'", (WidgetTester widgetTester) async {
      app.main();
    });
  });
}
