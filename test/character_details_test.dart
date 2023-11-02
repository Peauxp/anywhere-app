import 'package:anywhere_app/classes/result_data.dart';
import 'package:anywhere_app/layouts/character_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Character details show', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CharacterDetails(
            character: Character(
              text: 'TestName - TestDescription',
              icon: CharacterIcon(
                height: '200',
                width: '200',
                url: '/path_to_image',
              ),
            ),
          ),
        ),
      ),
    );

    expect(find.byType(Image), findsOneWidget);

    expect(find.text('TestName'), findsOneWidget);
    expect(find.text('TestDescription'), findsOneWidget);
  });
}
