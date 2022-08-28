// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:msibnf/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Assemble or Declare
    await tester.pumpWidget(
      const MaterialApp(
        home: MyHomePage(),
      ),
    ); // Rendering Spesific Screen

    // // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);

    final button = find.byType(FloatingActionButton);

    // Action
    await tester.tap(button); // Test to tap the button
    await tester.pump(); // Re-render component to save changes

    // Assert
    final text = find.text('You have pushed the button this many times: 1');
    // expect(actual, matcher)
    expect(text, findsOneWidget); // Make sure to detect only one widget
  });
}
