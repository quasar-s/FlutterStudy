import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:  MyHomepage(),

    );

  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          width: 430,
          height: 930,
          color: Colors.white,
          padding: const EdgeInsets.only(top: 55,),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 330,
                  alignment: Alignment.topRight,
                  child: Text(
                    "3/3",
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
                    "언제,\n누구와 떠나시나요?",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 70.00),

                Container(
                  width: 300,
                  height: 100,
                  child: Text(
                    "                                부터",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: Text(
                    "                                까지",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: Text(
                    "                와     총                  명",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                Container(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {  },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)
                        )
                      )
                    ),
                    child: Text(
                      "다음",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: "Mulish",
                        backgroundColor: Colors.blue,

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