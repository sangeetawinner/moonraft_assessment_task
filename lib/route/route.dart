import 'package:flutter/material.dart';

import 'package:assessment/presentation/screens/assessment_result_screen.dart';
import 'package:assessment/presentation/container/asssessment_container.dart';
import 'package:assessment/presentation/screens/home_screen.dart';

// Route Names

// Control our page route flow

class RouteGenerator {
  RouteGenerator._();
  static const String asessmentContainer = 'asessmentContainer';

  static const String homeScreen = 'homescreen';
  static const String assessmentResult = 'assessmentResult';

  static Map<String, WidgetBuilder> get buildRoutes {
    return {
      asessmentContainer: (BuildContext context) => AssessmentContainer(),
      homeScreen: (BuildContext context) => HomeScreen(),
      assessmentResult: (BuildContext context) => const AssessmentResultScreen()
    };
  }

  static String get initialRoute => RouteGenerator.homeScreen;
}
