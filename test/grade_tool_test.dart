import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  final tool = GradeTool(gradeRanges);

  test('100 is an A', () {
    final result = tool.numberToLetter(100);
    expect(result, "A");
  });

  test('90 is an A', () {
    final result = tool.numberToLetter(90);
    expect(result, "A");
  });

  test('80.5 is an B', () {
    final result = tool.numberToLetter(80.5);
    expect(result, "B");
  });

  test('59 is an F', () {
    final result = tool.numberToLetter(59);
    expect(result, "F");
  });

  test('negative number is invalid', () {
    final result = tool.numberToLetter(-1);
    expect(result, "Not valid grade");
  });

  test('Number over 100 is invalid', () {
    final result = tool.numberToLetter(101);
    expect(result, "Not valid grade");
  });

}