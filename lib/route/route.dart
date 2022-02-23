import 'package:flutter/material.dart';

import 'package:assessment/presentation/container/asssessment_container.dart';
import 'package:assessment/presentation/screens/home_screen.dart';

// Route Names
const String homecontainer = 'homecontainer';
const String homeScreen = 'homescreen';
const String settingsPage = 'settings';

// Control our page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homecontainer:
      return MaterialPageRoute(builder: (context) => AssessmentContainer());
    case homeScreen:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case settingsPage:
    //  return MaterialPageRoute(builder: (context) => SettingsPage());
    default:
      throw ('This route name does not exit');
  }
}
