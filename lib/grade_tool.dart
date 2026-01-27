class GradeTool {
  String findGrade(int numGrade, String letterGrade) {
    if (numGrade < 60) {
      letterGrade = "F";
    } else if (numGrade < 70) {
      letterGrade = "D";
    } else if (numGrade < 80) {
      letterGrade = "C";
    } else if (numGrade < 90) {
      letterGrade = "B";
    } else if (numGrade < 100) {
      letterGrade = "A";
    } else {
      return "Grade not valid";
    }
    return "Grade not valid";
  }
}
