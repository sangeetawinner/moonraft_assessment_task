import 'dart:convert';
import 'dart:developer';

import 'package:assessment/modal/assesment_modal.dart';
import 'package:flutter/services.dart';

class AssessmentRepository {
  Future<List<AssessmentModal>> readJson() async {
    final String response =
        await rootBundle.loadString('assets/assessment_question.json');

    final data = await json.decode(response);

    List<AssessmentModal> items = [];

    for (final item in data) {
      items.add(
        AssessmentModal.fromJson(item),
      );
    }
    inspect(items);
    return items;
  }
}
