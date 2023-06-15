import 'package:flutter/material.dart';
import 'package:flutter_study/home/fifth_page.dart';

class SixthPage extends StatefulWidget {
  final String prompt;
  const SixthPage(this.prompt, {super.key});

  @override
  State<SixthPage> createState() => SixthPageState();
}

class SixthPageState extends State<SixthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("여행 일정"),
      ),
      // body: Text(widget.prompt),
      body: FutureBuilder<String> (
        future: generateText(widget.prompt),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return Text('${snapshot.data}');
          }
        },
      ),
    );
  }
}
