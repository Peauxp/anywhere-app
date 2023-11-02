import 'package:anywhere_app/classes/result_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ResultData', () {
    final characterIconJson = {
      'Height': '100',
      'Width': '100',
      'URL': 'http://example.com/icon.png'
    };

    final characterJson = {
      'Text': 'Sample Character',
      'Icon': characterIconJson
    };

    final resultDataJson = {
      'RelatedTopics': [characterJson]
    };

    test('fromJson creates a CharacterIcon from JSON', () {
      final characterIcon = CharacterIcon.fromJson(characterIconJson);
      expect(characterIcon.height, '100');
      expect(characterIcon.width, '100');
      expect(characterIcon.url, 'http://example.com/icon.png');
    });

    test('fromJson creates a Character from JSON', () {
      final character = Character.fromJson(characterJson);
      expect(character.text, 'Sample Character');
      expect(character.icon.height, '100');
      expect(character.icon.width, '100');
      expect(character.icon.url, 'http://example.com/icon.png');
    });

    test('fromJson creates a ResultData from JSON', () {
      final resultData = ResultData.fromJson(resultDataJson);
      final character = resultData.characters.first;
      expect(character.text, 'Sample Character');
      expect(character.icon.height, '100');
      expect(character.icon.width, '100');
      expect(character.icon.url, 'http://example.com/icon.png');
    });
  });
}
