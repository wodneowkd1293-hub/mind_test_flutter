import 'package:flutter/material.dart';
import 'start_page.dart';

class ResultPage extends StatelessWidget {
  final int score;

  const ResultPage({super.key, required this.score});

  // 점수에 따라 결과를 나누는 함수
  ResultInfo get result {
    if (score <= 4) {
      return const ResultInfo(
        emoji: "🌿",
        title: "차분 & 안정 타입",
        desc: "감정 기복이 크지 않고, 조용히 자기 리듬을 지키는 편이에요.\n혼자만의 시간이 큰 에너지가 됩니다.",
        tip: "오늘은 음악 틀고 산책 10분 추천!",
      );
    } else if (score <= 8) {
      return const ResultInfo(
        emoji: "☀️",
        title: "밝음 & 활동 타입",
        desc: "에너지가 좋고, 분위기를 살리는 역할을 자주 해요.\n사람들과 어울리며 충전되는 스타일!",
        tip: "오늘은 친구에게 먼저 연락해보기 추천!",
      );
    } else {
      return const ResultInfo(
        emoji: "🚀",
        title: "자유 & 창의 타입",
        desc: "틀에 갇히는 걸 싫어하고, 새로운 것을 시도하는 걸 좋아해요.\n아이디어가 많고 자기만의 방식이 확실해요.",
        tip: "오늘은 새로운 카페/장소 탐험 추천!",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final r = result;

    return Scaffold(
      appBar: AppBar(
        title: const Text('결과'),
        centerTitle: true,
        backgroundColor: const Color(0xFFFF8A65),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFFD54F),
              Color(0xFFFF8A65),
              Color(0xFF7E57C2),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 10),

                // 결과 카드
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.20),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.white.withOpacity(0.25)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 26,
                        offset: const Offset(0, 10),
                        color: Colors.black.withOpacity(0.18),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        r.emoji,
                        style: const TextStyle(fontSize: 52),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "당신의 심리 유형은…",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        r.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          letterSpacing: -0.2,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        r.desc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                          height: 1.35,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 14),

                      // 점수 뱃지
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF2D87),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Text(
                          "내 점수: $score 점",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 14),

                // 추천 팁 카드
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.18),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.white.withOpacity(0.25)),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.lightbulb_rounded, color: Colors.white, size: 26),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          r.tip,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.95),
                            fontWeight: FontWeight.w900,
                            height: 1.25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                // 다시하기 버튼
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const StartPage()),
                            (_) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF2D87),
                      foregroundColor: Colors.white,
                      elevation: 10,
                      shadowColor: Colors.black.withOpacity(0.25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      "다시 테스트하기",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                Text(
                  "※ 결과는 참고용이에요 😄",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.85),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResultInfo {
  final String emoji;
  final String title;
  final String desc;
  final String tip;

  const ResultInfo({
    required this.emoji,
    required this.title,
    required this.desc,
    required this.tip,
  });
}
