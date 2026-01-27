enum Grade {
  A,
  B,
  C,
  D,

  F,
}

final _mapper = {
  Grade.A: Range(0.9, 1.0),
  Grade.B: Range(0.8, 0.9),
  Grade.C: Range(0.7, 0.8),
  Grade.D: Range(0.6, 0.7),
  Grade.F: Range(0, 0.59),
}

class GradeTool {
  Grade convert(double grade) {
    if (grade >= 0.9) {
      return Grade.A;
    } else if (grade >= 0.8) {
      return Grade.B;
    } else if (grade >= 0.7) {
      return Grade.C;
    } else if (grade >= 0.6) {
      return Grade.D;
    } else {
      return Grade.F;
    }
  }
}