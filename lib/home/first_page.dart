import 'package:flutter/material.dart';
import 'package:flutter_study/home/second_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController fInputController = TextEditingController();
  int selected = 0;

  Widget radioBtn(String text, int index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selected = index;
          fInputController.text = text;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (selected == index) ? Colors.white : Colors.lightBlue,
          fontSize: 20,
          fontFamily: "Mulish",
        ),
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: Size(335, 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: (selected == index) ? Colors.lightBlue : Colors.white,
        side: BorderSide(color: Colors.lightBlue),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          width: 430,
          height: 930,
          color: Colors.white,
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
                    "1/3",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 90.00),
                Container(
                  width: 350,
                  child: Text(
                    "여행의 초점을\n어디에 맞출까요?",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 70.00),
                Container(
                  width: 330,
                  height: 300,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      radioBtn(
                        '일행',
                        1,
                      ),
                      SizedBox(height: 30.00),
                      radioBtn('ㅇㅇ', 2),
                      SizedBox(height: 30.00),
                      radioBtn('ㄴㄴ', 3),
                    ],
                  ),
                ),
                SizedBox(height: 80.00),
                Container(
                  width: 335,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff24a0ed),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPage(
                                  fInputController: fInputController.text,
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
    );
  }
}
