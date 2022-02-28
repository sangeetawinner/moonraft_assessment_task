import 'dart:convert';
import 'dart:developer';

import 'package:assessment/model/assesment_model.dart';
import 'package:flutter/services.dart';

class AssessmentRepository {
  Future<List<AssessmentModel>> readJson() async {
    final String response =
        await rootBundle.loadString('assets/assessment_question.json');

    final data = await json.decode(response);

    List<AssessmentModel> items = [];

    for (final item in data) {
      items.add(
        AssessmentModel.fromJson(item),
      );
    }
    inspect(items);
    return items;
  }
}
