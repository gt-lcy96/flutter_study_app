import 'package:flutter/material.dart';
import 'package:study_app/widgets/common/background_decoration.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundDecoration(child: Center(child: Text("I am here"))),
    );
  }
}
