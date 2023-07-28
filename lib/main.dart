import 'package:flutter/material.dart';
import 'home/first_page.dart';

const apiKey = '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';
const apiUrl = 'https://api.openai.com/v1/completions';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Travel App',
      // theme: ThemeData(
      //     primarySwatch: Colors.lightBlue),
      home: FirstPage(),
    );
  }
}


