import 'package:flutter/material.dart';
import 'package:flutter_study/home/result_page.dart';
// import 'connect_chatgpt.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({required this.fInputController,required this.inputcontroller,required this.formNtDate,required this.toNtDate,required this.selectedValue,Key? key}) : super(key: key);
  final String fInputController;
  final String inputcontroller;
  final String formNtDate;
  final String toNtDate;
  final String selectedValue;
  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;
  List<String> checkList = [];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
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
      body: Container(
        child: Container(
          width: 430,
          height: 930,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height : 90.00),
                Container(
                  width: 350,
                  child: Text(
                     "어떤 여행을\n계획하고 계신가요?",
                    //'${widget.fInputController},${widget.inputcontroller},${widget.formNtDate},${widget.toNtDate},${widget.selectedValue}', // 데이터 테스트
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height : 40.00),
                Container(
                  width: 213,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fillColor: const MaterialStatePropertyAll(Colors.black),
                        value: _isChecked1,
                        onChanged: (value) {
                          setState(() {
                            _isChecked1 = value!;
                            checkedList(_isChecked1, '자연에서 휴식');
                          });
                        },
                      ),
                      Text('자연에서 휴식',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 2,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height : 20.00),
                Container(
                  width: 213,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fillColor: const MaterialStatePropertyAll(Colors.black),
                        value: _isChecked2,
                        onChanged: (value) {
                          setState(() {
                            _isChecked2 = value!;
                            checkedList(_isChecked2, '반려동물과 함께');
                          });
                        },
                      ),
                      Text('반려동물과 함께',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 2,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height : 20.00),
                Container(
                  width: 213,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fillColor: const MaterialStatePropertyAll(Colors.black),
                        value: _isChecked3,
                        onChanged: (value) {
                          setState(() {
                            _isChecked3 = value!;
                            checkedList(_isChecked3, '맛집투어');
                          });
                        },
                      ),
                      Text('맛집투어',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 2,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height : 20.00),
                Container(
                  width: 213,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fillColor: const MaterialStatePropertyAll(Colors.black),
                        value: _isChecked4,
                        onChanged: (value) {
                          setState(() {
                            _isChecked4 = value!;
                            checkedList(_isChecked4, 'SNS 핫플');
                          });
                        },
                      ),
                      Text('SNS 핫플',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 2,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height : 20.00),
                Container(
                  width: 213,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fillColor: const MaterialStatePropertyAll(Colors.black),
                        value: _isChecked5,
                        onChanged: (value) {
                          setState(() {
                            _isChecked5 = value!;
                            checkedList(_isChecked5, '체험 및 액티비티');
                          });
                        },
                      ),
                      Text('체험 및 액티비티',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 2,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.00),
                Container(
                  width: 335,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff24a0ed),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      String prompt = "${widget.formNtDate}부터 ${widget.toNtDate}까지 ${widget.fInputController} 한 명과 함께 가는 ${widget.inputcontroller} 여행 일정 세워줘";
                      //String prompt = "2023년 7월 12일부터 2023년 7월 14일까지 ${widget.fInputController} 한 명과 함께 가는 ${widget.inputcontroller} 여행 일정 세워줘";
                      debugPrint(prompt);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ResultPage(prompt)
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
                SizedBox(height : 10.00),
                Container(
                  width: 330,
                  alignment: Alignment.bottomCenter,
                  child:TextButton(
                    onPressed: (){
                      String prompt = "${widget.formNtDate}부터 ${widget.toNtDate}까지 ${widget.fInputController} 한 명과 같이 가는 ${widget.inputcontroller} 여행 일정 세워줘";
                      //String prompt = "2023년 7월 12일부터 2023년 7월 14일까지 ${widget.fInputController} 한 명과 함께 가는 ${widget.inputcontroller} 여행 일정 세워줘";
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ResultPage(prompt)
                      ),
                      );
                    },  //다음 페이지 메서드 호출
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
              ],
            ),
          ),
        ),
      ),
    );
  }
  void checkedList(bool isCheck, String name) {
    if (isCheck) {
      checkList.add(name);
      //print(checkList);
    } else {
      checkList.remove(name);
      //print(checkList);
    }
  }
}