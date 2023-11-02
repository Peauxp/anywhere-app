import 'package:anywhere_app/classes/result_data.dart';
import 'package:anywhere_app/layouts/charater_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CharacterListView displays and filters characters correctly',
      (WidgetTester tester) async {
    // Creating mock data
    var resultData = const ResultData(
      characters: [
        Character(
          text: 'teacher - school character',
          icon: CharacterIcon(height: '100', width: '100', url: 'url1'),
        ),
        Character(
          text: 'student - school character',
          icon: CharacterIcon(height: '100', width: '100', url: 'url2'),
        ),
      ],
    );

    // Building the widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CharacterListView(
            resultData: resultData,
            onTap: (character) {},
          ),
        ),
      ),
    );

// Verifying that all items are displayed initially
    expect(
        find.descendant(
            of: find.byType(ListTile), matching: find.text('teacher')),
        findsOneWidget);
    expect(
        find.descendant(
            of: find.byType(ListTile), matching: find.text('student')),
        findsOneWidget);

    // Enter text in the search field
    await tester.enterText(find.byType(TextField), 'school character');
    await tester.pump();

    // Verify that both items are still displayed as they both contain 'school character'
    expect(
        find.descendant(
            of: find.byType(ListTile), matching: find.text('teacher')),
        findsOneWidget);
    expect(
        find.descendant(
            of: find.byType(ListTile), matching: find.text('student')),
        findsOneWidget);

    // Update the search text
    await tester.enterText(find.byType(TextField), 'teacher');
    await tester.pump();

// Verify that only the item containing 'teacher' is displayed
    expect(
        find.descendant(
            of: find.byType(ListTile), matching: find.text('teacher')),
        findsOneWidget);
    expect(
        find.descendant(
            of: find.byType(ListTile), matching: find.text('student')),
        findsNothing);
  });
}
