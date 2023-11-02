import 'package:anywhere_app/classes/result_data.dart';
import 'package:anywhere_app/layouts/character_details.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
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
          child: CharacterDetails(
            character: character,
          ),
        ),
      ),
    );
  }
}
