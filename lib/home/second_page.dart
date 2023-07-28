import 'package:flutter/material.dart';
// import 'package:flutter_study/home/third_page.dart';

// import 'package:flutter_study/home/ff.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        // title: Text("'${widget.fInputController}'"),
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: Text(
                '2/3',
                textScaleFactor: 1.8,
                style: TextStyle(
                  height: 1.85,
                  fontSize: 11.5,
                  letterSpacing: 1.5,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: 430,
              height: 930,
              color: Colors.white,
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.00),
                    Container(
                      margin: EdgeInsets.only(left: 20),
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
                    SizedBox(height: 80),
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
                        image: AssetImage('assets/images/jeju.png')),
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
                            MaterialPageRoute(builder: (context) => ThirdPage(
                               fInputController: widget.fInputController,
                               inputcontroller: inputcontroller.text,
                                )),
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