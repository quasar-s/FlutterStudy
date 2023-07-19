import 'package:flutter/material.dart';
import 'connect_chatgpt.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _MainPageState();
}

class _MainPageState extends State<FourthPage> {
  //bool _isChkOpt1 = false;
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        child: Container(
          width: 430,
          height: 930,
          color: Colors.white,
          padding: const EdgeInsets.only(top: 55, ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 330,
                  alignment: Alignment.topRight,
                  child:TextButton(
                    onPressed: (){},  //다음 페이지 메서드 호출
                    child: Text(
                      "skip",
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height : 90.00),
                Container(
                  width: 350,
                  child: Text(
                    "어떤 여행을\n계획하고 계신가요?",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height : 20.00),
                Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.check_circle_outline,
                          color: Colors.grey),
                        Text('자연에서 휴식',
                          style: TextStyle(
                            fontSize: 22,
                            letterSpacing: 2,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                ),
                SizedBox(height : 20.00),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.check_circle_outline,
                          color: Colors.grey),
                      Text('반려동물과 함께',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 2,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height : 20.00),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.check_circle_outline,
                          color: Colors.grey),
                      Text('맛집투어',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 2,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height : 20.00),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.check_circle_outline,
                          color: Colors.grey
                      ),
                      Text('SNS 핫플',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 2,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height : 20.00),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.check_circle_outline,
                          color: Colors.grey
                      ),
                      Text('체험 및 액티비티',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 2,
                          color: Colors.grey,
                        ),
                      ),
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
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => SecondPage()
                        ),
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