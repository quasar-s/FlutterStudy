import 'package:flutter/material.dart';
import '../main.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ResultPage extends StatefulWidget {
  final String inputcontroller;
  final String prompt;
  const ResultPage({required this.prompt, required this.inputcontroller, Key? key}): super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<String>(
          future: generateText(widget.prompt),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return
            // child: CircularProgressIndicator()
            Column(
              children: [
                Image(
                    image: AssetImage('assets/images/Loading.png')
                )
              ],
            );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              color: Colors.white,
              child: Container(
                width: 430,
                height: 930,
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      SizedBox(height: 40.00),
                      Container(
                        width: 350,
                        child: Text(
                          "2박 3일\n${widget.inputcontroller} 여행\n추천일정 입니다.",
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.00),
                      // title
                      Container(
                        height: 1.0,
                        width: 500.0,
                        color: Colors.grey,
                      ),
                      // line
                      // SizedBox(height: 30.00),
                      Center(
                        child: Text('${snapshot.data}',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Mulish",
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 40.00),
                      Container(
                        height: 1.0,
                        width: 500.0,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 40.00),
                      // line
                      Container(
                        width: 350,
                        child: Text(
                          "이런 식으로 짧은 기간 동안 ${widget.inputcontroller}의 다양한 관광 명소와 맛집을 경험하며 즐거운 여행이 될 것입니다.\n즐거운 여행 되시길 바라며 잊지 말고 함께 좋은 추억을 만들어보세요!",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Mulish",
                          ),
                        ),
                      ),
                      SizedBox(height: 40.00),
                      // end
                    ],
                  ),
                ),
              ),
            );
        }
      },
    ),
      )
    );
  }
}

Future<String> generateText(String prompt) async {
  final response = await http.post(
    Uri.parse(apiUrl),
    headers: {'Content-Type': 'application/json','Authorization': 'Bearer $apiKey'},
    body: jsonEncode({
      "model": "text-davinci-003",
      'prompt': prompt,
      'max_tokens': 1000,
      'temperature': 0.8,
      'top_p': 1,
      'frequency_penalty': 0,
      'presence_penalty': 0
    }),
  );

  Map<String, dynamic> newresponse = jsonDecode(utf8.decode(response.bodyBytes));

  return newresponse['choices'][0]['text'];
}