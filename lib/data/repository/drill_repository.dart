import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:schoolhub_flutter/data/model/drill.dart';

class DrillRepository {
  Future<DrillModel> createDrill(int topicId) async {
    final Uri uri = Uri.parse("${dotenv.get('SERVER_URL')}/drill/create")
        .replace(queryParameters: {'topicId': topicId.toString()});

    final response =
        await http.post(uri, headers: {'ngrok-skip-browser-warning': 'true'});

    final decodedResponse = json.decode(response.body);

    print(decodedResponse);

    final DrillModel drill = DrillModel.fromMap(decodedResponse);

    return drill;
  }
}
