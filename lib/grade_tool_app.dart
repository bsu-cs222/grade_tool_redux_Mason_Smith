import 'package:flutter/material.dart';
import 'grade_tool.dart';

void main() {
  runApp(GradeToolApp());
}

class GradeToolApp extends StatelessWidget {
  const GradeToolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grading Tool',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue
        ),
      ),
      home: const GradeToolWidget()
    );
  }
}

class GradeToolWidget extends StatefulWidget {
  const GradeToolWidget({super.key});

  @override
  State<GradeToolWidget> createState() =>
      _GradeToolWidgetState();
}

class _GradeToolWidgetState extends State<GradeToolWidget> {
  final TextEditingController _controller = TextEditingController();
  String message = "Result";

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(fontSize: 32);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              textAlign: TextAlign.center,
              style: style,
              controller: _controller,
            ),
            ElevatedButton(
              onPressed: _gradeConverter,
              child: Text('Check', style: style),
            ),
            Text(message, style: style),
          ],
        )
    );
  }

  void _gradeConverter() {
    final converter = GradeTool(gradeRanges);
    final numGrade = double.parse(_controller.text);
    final result = converter.numberToLetter(numGrade);
    setState(() {
      message = result.toString();
    });
  }
}
