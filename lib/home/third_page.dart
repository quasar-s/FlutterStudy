import 'package:flutter/material.dart';
import 'package:flutter_study/home/first_page.dart';
import 'package:flutter_study/home/fourth_page.dart';
import 'package:flutter_study/home/second_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({required this.fInputController,required this.inputcontroller,Key? key}) : super(key: key);

  final String fInputController;
  final String inputcontroller;
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  DateTime formDate = DateTime.now();
  DateTime toDate = DateTime.now();

  String formNtDate = '';
  String toNtDate = '';

  final _valueList = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  var _selectedValue = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
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
                '3/3',
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
                SizedBox(height: 90.00),
                Container(
                  width: 350,
                  child: Text(
                    "언제,\n몇 명이 떠나시나요?",
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
                  height: 40,
                  color: Colors.white,
                  child: ElevatedButton(
                    onPressed: () async{
                      final selectedDate = await showDatePicker(
                        context: context,
                        initialDate: formDate,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2999),
                      );
                      if (selectedDate != null) {
                        setState(() {
                          formDate = selectedDate;
                          formNtDate = formDate.year.toString()+'/'+formDate.month.toString().padLeft(2,'0')+'/'+formDate.day.toString().padLeft(2, '0');
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                        side: BorderSide(
                          color: Colors.grey,
                        ),
                    ),
                    child: Text(
                      "${formDate.year.toString()}/${formDate.month.toString().padLeft(2,'0')}/${formDate.day.toString().padLeft(2, '0')} 부터",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w200,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () async{
                      final selected2Date = await showDatePicker(
                        context: context,
                        initialDate: toDate,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2999),
                      );
                      if (selected2Date != null) {
                        setState(() {
                          toDate = selected2Date;
                          toNtDate = toDate.year.toString()+'/'+toDate.month.toString().padLeft(2,'0')+'/'+toDate.day.toString().padLeft(2, '0');
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                        side: BorderSide(
                          color: Colors.grey,
                        ),
                    ),
                    child: Text(
                      "${toDate.year.toString()}/${toDate.month.toString().padLeft(2,'0')}/${toDate.day.toString().padLeft(2, '0')} 까지",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w200,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                    width: 90,
                    height: 50,
                    child: DropdownButton(
                      isExpanded: true,
                      underline: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                      value: _selectedValue,
                      items: _valueList.map(
                            (value){
                          return DropdownMenuItem(
                              value: value,
                              child: Text("$value명",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: "Mulish",
                              ),),
                          );
                        },
                      ).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedValue = value!;
                        });
                      },
                    )
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
                            builder: (context) => FourthPage(fInputController: widget.fInputController,inputcontroller: widget.inputcontroller, formNtDate: formNtDate,toNtDate: toNtDate,
                        ),
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



