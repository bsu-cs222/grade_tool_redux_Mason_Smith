import 'package:flutter_test/flutter_test.dart';
import 'package:grade_tool/grade_tool.dart';

void main() {
  test('100 is an A', () {
    final tool = GradeTool();
    final result = tool.findGrade(100);
    expect(GradeTool(), result);
  });
}