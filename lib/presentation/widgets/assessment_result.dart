import 'package:assessment/modal/assesment_modal.dart';

import 'package:flutter/material.dart';

class AssessmentResult extends StatelessWidget {
  final List<AssessmentModal> selectedQuesttions;

  const AssessmentResult({Key? key, required this.selectedQuesttions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Assessment Result"),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              title: Text(selectedQuesttions[index].question),
              // title: Text("This is title"),
              subtitle: ListView.builder(
                itemBuilder: (BuildContext, optionindex) {
                  return Card(
                    child: ListTile(
                      subtitle: Text(selectedQuesttions[index]
                          .options[optionindex]
                          .optionValue),
                      // title: Text("This is title"),
                      // subtitle: Text("This is subtitle"),
                    ),
                  );
                },
                itemCount: selectedQuesttions[index].options.length,
                shrinkWrap: true,
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.vertical,
              ),
            ),
          );
        },
        itemCount: selectedQuesttions.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
