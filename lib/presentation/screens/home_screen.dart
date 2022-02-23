import 'package:flutter/material.dart';

import 'assessment_screen_start.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://4bgowik9viu406fbr2hsu10z-wpengine.netdna-ssl.com/wp-content/uploads/2020/02/CTA-Orange-Circles.png"),
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 95.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 120,
          ),
          Center(
            child: RaisedButton(
              child: Text('Start Assessment'),
              color: Colors.orangeAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AssessmentScreenStart()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
