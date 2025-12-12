class AnswerOption {
  final String text;  // 보기 문구
  final int score;    // 점수 값

  AnswerOption({
    required this.text,
    required this.score,
  });
}

class Question {
  final String title;         // 질문 제목
  final String description;   // 질문 설명
  final List<AnswerOption> options; // 보기 리스트

  Question({
    required this.title,
    required this.description,
    required this.options,
  });
}
