import 'package:assessment/model/option_model.dart';
import 'package:assessment/presentation/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:assessment/model/assesment_model.dart';

void main() {
  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows you to build and interact
  // with widgets in the test environment.
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Test code goes here.
    await tester.pumpWidget(SearchWidget(
      currentQuestionAnswerSet: AssessmentModel(
          id: "1",
          question: "whatts",
          options: [Option(id: "1", optionValue: "vale")],
          multiselect: true,
          type: "grid",
          image: ""),
      addAnswer: () {},
      currentIndex: 1,
    ));
    expect(find.byType(TextField), findsOneWidget);
  });
}
