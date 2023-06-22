import 'package:flutter/material.dart';
import 'package:flutter_study/home/second_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selected = 0;

  Widget radioBtn(String text, int index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selected = index;
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
          padding: const EdgeInsets.only(top: 55, ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  width: 330,
                  alignment: Alignment.topRight,
                  child: Text(
                    "5/5",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 30.00),
                Container(
                  width: 350,
                  child: Text(
                    "{}박 {}일\n{} 가는\n{} 여행 일정입니다.",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 70.00),
                Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("https://t1.daumcdn.net/cfile/tistory/252A6F35595E1A1E22")
                    )
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
