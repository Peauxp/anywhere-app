import 'dart:async';

import 'package:anywhere_app/classes/app_config.dart';
import 'package:anywhere_app/classes/result_data.dart';
import 'package:anywhere_app/details_page.dart';
import 'package:anywhere_app/layouts/details.dart';
import 'package:anywhere_app/providers/call_result.dart';
import 'package:anywhere_app/providers/current_app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<Widget> initializeApp(AppConfig appConfig) async {
  WidgetsFlutterBinding.ensureInitialized();
  return ProviderScope(child: MaterialApp(home: MyApp(appConfig: appConfig)));
}

class MyApp extends ConsumerWidget {
  MyApp({
    Key? key,
    required this.appConfig,
  }) : super(key: key);

  final AppConfig appConfig;

  Widget _buildListView({
    required ResultData? resultData,
    required Function(Character) onTap,
  }) {
    return ListView.builder(
      itemCount: resultData?.characters.length,
      itemBuilder: (context, index) {
        Character character = resultData?.characters[index] ??
            const Character(
              text: '',
              icon: CharacterIcon(height: '', width: '', url: ''),
            );
        List<String> descriptionParts = character.text.split(' - ');
        return ListTile(
          title: Text(descriptionParts[0]),
          onTap: () => onTap(character),
        );
      },
    );
  }

  navigateToDetails(Character character, BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailsPage(
          character: character,
        ),
      ),
    );
  }

  final ValueNotifier<Character?> _selectedTabletCharacter =
      ValueNotifier<Character?>(null);

  Widget _layoutTabletDetails() {
    return ValueListenableBuilder(
      builder: (context, Character? selectedCharacter, Widget? child) {
        if (selectedCharacter == null) {
          return const Center(
            child: Text('No character selected'),
          );
        } else {
          return Center(
              child: DetailsLayout(
            character: selectedCharacter,
          ));
        }
      },
      valueListenable: _selectedTabletCharacter,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentAppConfig =
        ref.watch(currentAppConfigProvider(appConfig: appConfig));
    final futureCallResult =
        ref.watch(callResultProvider(appConfig.apiEndpoint));
    return Scaffold(
      appBar: AppBar(
        title: Text('Characters of ${flavorToString(currentAppConfig.flavor)}'),
      ),
      body: futureCallResult.when(
        data: (resultData) {
          return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            if (MediaQuery.of(context).size.shortestSide > 600) {
              return Row(
                children: [
                  Expanded(
                    child: _buildListView(
                      resultData: resultData,
                      onTap: (selectedCharacter) {
                        _selectedTabletCharacter.value = selectedCharacter;
                      },
                    ),
                  ),
                  const VerticalDivider(width: 1),
                  Expanded(
                    child: _layoutTabletDetails(),
                  ),
                ],
              );
            } else {
              return _buildListView(
                resultData: resultData,
                onTap: (Character selectedCharacter) =>
                    Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      character: selectedCharacter,
                    ),
                  ),
                ),
              );
            }
          });
        },
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
      ),
    );
  }
}
