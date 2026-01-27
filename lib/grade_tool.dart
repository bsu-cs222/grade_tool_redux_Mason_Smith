class Range {
  final double minimum;
  final double maximum;
  String letterGrade;

  Range (this.minimum, this.maximum, this.letterGrade);
}

List<Range> gradeRanges = [
  Range(0.9, 1, "A"),
  Range(0.8, 0.89, "B"),
  Range(0.7, 0.79, "C"),
  Range(0.6, 0.69, "D"),
  Range(0, 0.59, "F"),
];

String numberToLetter(int numGrade) {
  for (final range in gradeRanges) {
    if (numGrade >= range.minimum && numGrade <= range.maximum) {
      return range.letterGrade;
    }
  }
  return "Not valid grade";
}