import 'package:flutter/material.dart';
final _valueList = ['첫 번째', '두 번째', '세 번째'];
var _selectedValue = '첫 번째';
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
        body: Center(
          child: DropdownButton(
            value: _selectedValue,
            items: _valueList.map(
                (value){
                  return DropdownMenuItem(
                    value : value,
                    child : Text(value),
                  );
                },
            ).toList(),
            onChanged: (value){
              setState(() {
                _selectedValue = value!;
              });
            },
          )
        )
    );
  }
}
