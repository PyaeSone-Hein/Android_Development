const int passScore = 3;

int scoreOne(String correct, String ? ans) =>
    (ans != null && ans == correct) ? 1 : 0;

Map<String, dynamic> gradeAll(
    List<String> key,
    Map<String, List<String?>?> students){

  final Map<String, int> scores = {};
  final List<String> passed = [];
  int totalScore = 0;

  students.forEach((name, answers){
    int score = 0;

    for (int i = 0; i < key.length; i++){
      final studentAns = answers?[i] ?? null;
      score += scoreOne(key[i], studentAns);
    }

    scores[name] = score;
    totalScore += score;

    score >= passScore ? passed.add(name) : null;

  });
  double average = totalScore / scores.length;

  return {
    'scores': scores,
    'average': average,
    'passed': passed,
  };


}

void main() {
  final key = ["A", "C", "B", "D", "B"];

  final students = <String, List<String?>?>{
    "Ann": ["A", "C", "B", "D", "B"],
    "Ben": ["A", null, "B", "A", "B"],
    "Cat": ["B", "C", null, "D", "A"],
  };

  print(gradeAll(key, students));
}