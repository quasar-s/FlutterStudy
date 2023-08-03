import 'package:flutter/material.dart';
// import 'package:flutter_study/home/third_page.dart';
import 'package:flutter_study/home/chat/api.dart';
import 'package:flutter_study/home/ff.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_study/home/third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({required this.fInputController, Key? key})
      : super(key: key);
  final String fInputController;
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController inputcontroller = TextEditingController();

//safetyzone 찾아보기
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("'${widget.fInputController}'"),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: 430,
              height: 930,
              padding: const EdgeInsets.only(
                top: 55,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 330,
                      alignment: Alignment.topRight,
                      child: Text(
                        "2/3",
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 50.00),
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      width: 350,
                      child: Text(
                        "어디로 떠나시나요?",
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 20,
                          child: Icon(
                            Icons.search,
                            color: Colors.black12,
                          ),
                        ),
                        Container(
                          width: 280,
                          height: 20,
                          margin: EdgeInsets.only(right: 50),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '목적지 검색',
                            ),
                            controller: inputcontroller,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Image(
                        width: 350,
                        height: 300,
                        image: AssetImage('assets/jeju.png')),
                    SizedBox(height: 30),
                    Container(
                      width: 335,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff24a0ed),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            print(inputcontroller.text);
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResultPage(
                                // fInputController: widget.fInputController,
                                // inputcontroller: inputcontroller.text,
                                "2023년08월02일부터 2023년 08월 04일까지 $inputcontroller 로 ${widget.fInputController}이랑 여행갈건데 식당이랑 관광지 위주로 세부계획 세워줘")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                        child: Text(
                          "다음",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Mulish",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
