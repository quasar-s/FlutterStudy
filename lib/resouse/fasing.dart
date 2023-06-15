class SentenceAnalyzer {
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
          case '숙소':
          case '호텔':
            result['accommodation'] = nextWord;
            break;
          case '축제':
            result['festival'] = nextWord;
            break;
          case '기간':
            final String duration = extractDuration(words, i);
            result['duration'] = duration;
            break;
          case '이동':
            if (nextWord == '수단') {
              final String transportation = extractTransportation(words, i);
              result['transportation'] = transportation;
            } else if (nextWord == '경로') {
              final String route = extractRoute(words, i);
              result['route'] = route;
            }
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
}

void main() {
  const sentence = "";
  final result = SentenceAnalyzer.analyzeSentence(sentence);

  print('숙소: ${result['accommodation']}');
  print('축제: ${result['festival']}');
  print('기간: ${result['duration']}');
  print('이동 수단: ${result['transportation']}');
  print('이동 경로: ${result['route']}');
}