import 'dart:convert';

import 'package:anywhere_app/classes/result_data.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'call_result.g.dart';

@Riverpod(keepAlive: true)
class CallResult extends _$CallResult {
  @override
  Future<ResultData?> build(String apiEndpoint) async {
    try {
      var result = await http
          .get(Uri.parse('http://api.duckduckgo.com/?q=$apiEndpoint'));
      if (result.statusCode == 200) {
        return ResultData.fromJson(json.decode(result.body));
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
