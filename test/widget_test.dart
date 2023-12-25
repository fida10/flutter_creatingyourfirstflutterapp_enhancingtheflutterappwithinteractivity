import 'package:creatingyourfirstflutterapp_enhancingtheflutterappwithinteractivity/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Flutter App with Button Interactivity Test',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Test initial state of Text widget
    expect(find.text('Hello'), findsOneWidget);

    // Tap the button to change text
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Test updated state of Text widget
    expect(find.text('Hello, Flutter!'), findsOneWidget);
    expect(find.text('Hello'), findsNothing);
  });
}
