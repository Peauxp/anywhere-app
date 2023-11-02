import 'package:anywhere_app/classes/result_data.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.character});

  final Character character;

  final myDivider = const Divider(
    indent: 20,
    endIndent: 20,
  );

  @override
  Widget build(BuildContext context) {
    List<String> descriptionParts = character.text.split(' - ');
    Widget image = getImageWidget(character.icon.url);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Details'),
      ),
      body: SingleChildScrollView(
        // If the content overflows, make it scrollable
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top,
          ),
          child: Padding(
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
                Text(
                  descriptionParts[1],
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
