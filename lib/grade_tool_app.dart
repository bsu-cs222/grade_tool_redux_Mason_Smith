import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(GradeToolApp());
}

class GradeToolApp extends StatelessWidget {
  const GradeToolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: create
    )
  }
}