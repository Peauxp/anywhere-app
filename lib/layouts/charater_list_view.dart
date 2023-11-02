import 'package:anywhere_app/classes/result_data.dart';
import 'package:flutter/material.dart';

class CharacterListView extends StatefulWidget {
  final ResultData? resultData;
  final Function(Character) onTap;

  const CharacterListView(
      {super.key, required this.resultData, required this.onTap});

  @override
  _CharacterListViewState createState() => _CharacterListViewState();
}

class _CharacterListViewState extends State<CharacterListView> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  searchController.clear();
                  setState(() {});
                },
              ),
            ),
            onChanged: (value) {
              setState(() {});
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.resultData?.characters.length,
            itemBuilder: (context, index) {
              Character character = widget.resultData?.characters[index] ??
                  const Character(
                    text: '',
                    icon: CharacterIcon(height: '', width: '', url: ''),
                  );
              List<String> descriptionParts = character.text.split(' - ');
              List<String> descriptionWords =
                  character.text.toLowerCase().split(' ');

              List<String> searchWords =
                  searchController.text.toLowerCase().split(' ');
              bool matches = searchWords.every((word) {
                return descriptionWords
                    .any((descriptionWord) => descriptionWord.contains(word));
              });

              if (matches) {
                return ListTile(
                  title: Text(descriptionParts[0]),
                  onTap: () => widget.onTap(character),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ),
      ],
    );
  }
}
