import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    final Iterable checkColorIndex = summaryData.where((data) {
      return data["user_answer"] == data['correct_answer'];
    });

    Color colorByIndex(Map<String, Object> dataColor) {
      return dataColor['user_answer'] == dataColor['correct_answer']
          ? Colors.blue
          : Colors.pink[400] as Color;
    }

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 5),
                    Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: TextStyle(
                          background: Paint()
                            ..strokeWidth = 10
                            ..color = colorByIndex(data)
                            ..strokeJoin = StrokeJoin.round
                            ..strokeCap = StrokeCap.round
                            ..style = PaintingStyle.stroke,
                          color: Colors.white),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: const TextStyle(color: Colors.white70),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data['user_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 207, 97, 207),
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 129, 137, 253),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
