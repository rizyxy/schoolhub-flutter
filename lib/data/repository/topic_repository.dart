import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:schoolhub_flutter/data/model/topic.dart';

class TopicRepository {
  Future<List<TopicModel>> fetchTopics(int subjectId) async {
    final Uri uri =
        Uri.parse("${dotenv.get('SERVER_URL')}/subject/$subjectId/topics");

    final response =
        await http.get(uri, headers: {'ngrok-skip-browser-warning': 'true'});

    if (response.statusCode != 200) {
      throw Exception();
    }

    final decodedResponse = json.decode(response.body);

    final List<TopicModel> topics = (decodedResponse as List)
        .map((map) => TopicModel.fromMap(map))
        .toList();

    return topics;
  }
}
