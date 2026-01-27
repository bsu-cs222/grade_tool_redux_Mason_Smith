
class GradeTool {
  final List<GradeRange> gradeRanges;

  GradeTool(this.gradeRanges);

  String numberToLetter(double numGrade) {
    for (final range in gradeRanges) {
      if (numGrade >= range.minimum && numGrade <= range.maximum) {
        return range.letterGrade;
      }
    }
    return "Not valid grade";
  }
}

List<GradeRange> gradeRanges = [
  GradeRange(90, 100, "A"),
  GradeRange(80, 89, "B"),
  GradeRange(70, 79, "C"),
  GradeRange(60, 69, "D"),
  GradeRange(0, 59, "F"),
];

class GradeRange {
  final double minimum;
  final double maximum;
  String letterGrade;

  GradeRange (this.minimum, this.maximum, this.letterGrade);
}