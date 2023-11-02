import 'package:anywhere_app/classes/result_data.dart';
import 'package:flutter/material.dart';

class DetailsLayout extends StatelessWidget {
  const DetailsLayout({super.key, required this.character});

  final Character character;

  Widget getImageWidget(String url) {
    const imageHeight = 200.0;
    return Image.network(
      'https://duckduckgo.com/$url',
      height: imageHeight,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
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
      errorBuilder:
          (BuildContext context, Object error, StackTrace? stackTrace) {
        return Image.network(
          'https://t3.ftcdn.net/jpg/04/34/72/82/360_F_434728286_OWQQvAFoXZLdGHlObozsolNeuSxhpr84.jpg',
          height: imageHeight,
        );
      },
    );
  }

  final myDivider = const Divider(
    indent: 20,
    endIndent: 20,
  );

  @override
  Widget build(BuildContext context) {
    Widget image = getImageWidget(character.icon.url);
    List<String> descriptionParts = character.text.split(' - ');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image,
          myDivider,
          Text(
            descriptionParts[0],
            style: const TextStyle(fontSize: 24),
          ),
          myDivider,
          descriptionParts.length > 1
              ? Text(
                  descriptionParts[1],
                  style: const TextStyle(fontSize: 18),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
