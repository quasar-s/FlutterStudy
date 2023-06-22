import 'package:flutter/material.dart';
import 'package:flutter_study/home/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("sample"),),
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
                    "2/3",
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 20,
                      height: 20,
                      child: Icon(
                        Icons.search,
                        color: Colors.black12,
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 20,
                      child: TextField(
                        decoration: const InputDecoration(hintText: '목적지 검색'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Image(image: AssetImage('assets/jeju.png')),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => thirdPage()),
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
