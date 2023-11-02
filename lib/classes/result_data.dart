import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_data.freezed.dart';

@freezed
class ResultData with _$ResultData {
  const factory ResultData({
    required List<Character> characters,
  }) = _ResultData;

  factory ResultData.fromJson(Map<String, dynamic> json) {
    return ResultData(
      characters: (json['RelatedTopics'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

@freezed
class Character with _$Character {
  const factory Character({
    required String text,
    required CharacterIcon icon,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      text: json['Text'],
      icon: CharacterIcon.fromJson(json['Icon'] as Map<String, dynamic>),
    );
  }
}

@freezed
class CharacterIcon with _$CharacterIcon {
  const factory CharacterIcon({
    required String height,
    required String width,
    required String url,
  }) = _CharacterIcon;

  factory CharacterIcon.fromJson(Map<String, dynamic> json) {
    return CharacterIcon(
      height: json['Height'],
      width: json['Width'],
      url: json['URL'],
    );
  }
}

Widget getImageWidget(String url) {
  const imageHeight = 200.0;
  return Image.network(
    'https://duckduckgo.com/$url',
    height: imageHeight,
    loadingBuilder:
        (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
      if (loadingProgress == null) return child;
      return SizedBox(
        height: imageHeight,
        child: Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    (loadingProgress.expectedTotalBytes ?? 1)
                : null,
          ),
        ),
      );
    },
    errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
      return Image.network(
        'https://t3.ftcdn.net/jpg/04/34/72/82/360_F_434728286_OWQQvAFoXZLdGHlObozsolNeuSxhpr84.jpg',
        height: imageHeight,
      );
    },
  );
}
