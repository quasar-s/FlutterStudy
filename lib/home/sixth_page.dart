import 'package:flutter/material.dart';
import 'package:flutter_study/home/fifth_page.dart';

class SixthPage extends StatefulWidget {
  final String prompt;
  const SixthPage(this.prompt, {super.key});

  @override
  State<SixthPage> createState() => SixthPageState();
}

class SixthPageState extends State<SixthPage> {
  @override

  static Map<String, String> analyzeSentence(String sentence) {
    final Map<String, String> result = {
      'accommodation': '',
      'festival': '',
      'duration': '',
      'transportation': '',
      'route': '',
    };

    final List<String> keywords = [
      '숙소',
      '호텔',
      '축제',
      '기간',
      '이동 수단',
      '이동 경로',
    ];

    final List<String> words = sentence.split(' ');

    for (int i = 0; i < words.length; i++) {
      final String word = words[i];

      if (keywords.contains(word)) {
        final String nextWord = i < words.length - 1 ? words[i + 1] : '';

        switch (word) {
          case ':':
            result['accommodation'] = nextWord;
            break;
          case '':
            result['festival'] = nextWord;
            break;
        }
      }
    }

    return result;
  }

  static String extractDuration(List<String> words, int startIndex) {
    String duration = '';

    for (int i = startIndex + 1; i < words.length; i++) {
      final String word = words[i];

      if (word == '일까지' || word == '일' || word == '까지') {
        break;
      }

      duration += word + ' ';
    }

    return duration.trim();
  }

  static String extractTransportation(List<String> words, int startIndex) {
    String transportation = '';

    for (int i = startIndex + 2; i < words.length; i++) {
      final String word = words[i];

      if (word == '이동' || word == '수단') {
        break;
      }

      transportation += word + ' ';
    }

    return transportation.trim();
  }

  static String extractRoute(List<String> words, int startIndex) {
    String route = '';

    for (int i = startIndex + 2; i < words.length; i++) {
      final String word = words[i];

      if (word == '이동' || word == '경로') {
        break;
      }

      route += word + ' ';
    }

    return route.trim();
  }

  Widget build(BuildContext context) {

    const sentence = "";
    final result = SixthPageState.analyzeSentence(sentence);
    return Scaffold(
      appBar: AppBar(
        title: const Text("여행 일정"),
      ),
      // body: Text(widget.prompt),
      body: FutureBuilder<String> (
        future: generateText(widget.prompt),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            // return Text('${snapshot.data}');
            if
          }
        },
      ),
    );
  }
}
