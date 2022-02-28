import 'package:assessment/cubit/assessment_cubit.dart';
import 'package:assessment/repository/assessment_repository.dart';
import 'package:assessment/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AssessmentCubit(assessmentRepository: AssessmentRepository())
            ..getData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: RouteGenerator.buildRoutes,
        initialRoute: RouteGenerator.initialRoute,
      ),
    );
  }
}
