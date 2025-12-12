import '../models/question.dart';

final questions = <Question>[
  Question(
    title: 'Q1. 아침에 일어나서 가장 먼저 드는 생각은?',
    description: '당신의 하루 기분을 결정하는 첫 순간이에요!',
    options: [
      AnswerOption(text: '아… 피곤해, 더 자고 싶다.', score: 1),
      AnswerOption(text: '그래도 일어나서 뭐라도 해봐야지.', score: 2),
      AnswerOption(text: '오늘 완전 상쾌한데? 오늘 기대돼!', score: 3),
    ],
  ),
  Question(
    title: 'Q2. 친구가 갑자기 약속을 취소했다면?',
    description: '예상치 못한 상황에서의 당신 반응은?',
    options: [
      AnswerOption(text: '좀 속상하지만 이해하려고 한다.', score: 1),
      AnswerOption(text: '그럼 나도 내 할 일 하면서 보낸다.', score: 2),
      AnswerOption(text: '오히려 잘 됐다! 혼자 쉬자.', score: 3),
    ],
  ),
  Question(
    title: 'Q3. 낯선 사람과 이야기할 때 드는 느낌은?',
    description: '새로운 관계 맺기에 대한 당신의 성향!',
    options: [
      AnswerOption(text: '너무 어색하고 부담된다.', score: 1),
      AnswerOption(text: '상황에 따라 괜찮기도 하고 그렇지 않기도.', score: 2),
      AnswerOption(text: '새로운 사람 재밌다! 대화 좋다.', score: 3),
    ],
  ),
  Question(
    title: 'Q4. 시험이나 발표를 앞둔 마음은?',
    description: '중요한 날을 앞둔 당신의 마음은?',
    options: [
      AnswerOption(text: '불안하지만 틈 날 때 준비한다.', score: 1),
      AnswerOption(text: '긴장되지만 친구들이랑 농담도 하면서 넘긴다.', score: 2),
      AnswerOption(text: '어차피 지나갈 일, 그냥 툭이박는다.', score: 3),
    ],
  ),
  Question(
    title: 'Q5. 스트레스 받을 때 너의 해결 방식은?',
    description: '힘들 때 어떻게 풀어내는 편이야?',
    options: [
      AnswerOption(text: '혼자 조용히 쉬면서 정리한다', score: 1),
      AnswerOption(text: '친구랑 수다 떨면서 푼다', score: 2),
      AnswerOption(text: '운동/산책/새로운 활동으로 날린다', score: 3),
    ],
  ),
  Question(
    title: 'Q6. 갑자기 하루가 비면 너는?',
    description: '예정이 없을 때의 선택!',
    options: [
      AnswerOption(text: '집에서 충전한다', score: 1),
      AnswerOption(text: '가까운 곳이라도 나가본다', score: 2),
      AnswerOption(text: '즉흥으로 어디든 떠난다', score: 3),
    ],
  ),
];
