import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var input_txt = "글자를 입력하세요";
  TextEditingController textEditingController = new TextEditingController();
  var val = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text('프로젝트')),
        body: Column(
          children : [
            Checkbox(
            value: val,
            onChanged:(value){
              setState(() {
                val = value!;
              });
            }
            ),
            Switch(
            value: val,
            onChanged:(value){
              setState(() {
                val = value!;
              });
            }),
    ],
    ));

  }
}
