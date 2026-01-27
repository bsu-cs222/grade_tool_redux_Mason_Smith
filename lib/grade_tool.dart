class GradeTool {
  final double minimum;
  final double maximum;
  String letterGrade;

  GradeTool (this.minimum, this.maximum, this.letterGrade);
}

List<GradeTool> gradeRanges = [
  GradeTool(0.9, 1, "A"),
  GradeTool(0.8, 0.89, "B"),
  GradeTool(0.7, 0.79, "C"),
  GradeTool(0.6, 0.69, "D"),
  GradeTool(0, 0.59, "F"),
];

String numberToLetter(int numGrade) {
  for (final range in gradeRanges) {
    if (numGrade >= range.minimum && numGrade <= range.maximum) {
      return range.letterGrade;
    }
  }
  return "Not valid grade";
}