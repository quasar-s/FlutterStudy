import 'package:flutter/material.dart';
import 'package:flutter_study/home/fifth_page.dart';
import 'package:flutter_study/main.dart';
import 'package:http/http.dart' as http; //http package

import 'dart:convert'; //convert

const apiKey = ''; //발급 받은 ChatGPT Key
const apiUrl = 'https://api.openai.com/v1/completions'; //ChatGPT Url 주소

void connect(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: flutter_study/home/fifth_page()
    );
  }
}
