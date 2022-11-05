import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'alert.dart';
import 'login.dart';
final _valueList = ['첫 번째', '두 번째', '세 번째'];
var _selectedValue = '첫 번째';
void main() {
  runApp(const MyApp());
}

class RouteArguments {
  final String title;
  final String content;

  RouteArguments(this.title, this.content);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '앱바 글자 바꾸기'),
      routes: {
        '/alert': (context) => Alert()
      },
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
  void _openPopup(){
    showDialog(
        context: context,
        builder: (BuildContext context){
        return AlertDialog(
          title: Text("다이얼로그"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Alert Dialog'),
                Text('ok 를 눌러 닫습니다'),
              ],
            )
          ),
          actions: [
            TextButton(
              onPressed: (){
              Navigator.of(context).pop();
            }, child: Text('ok')),
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, child: Text('cancel'),
            ),
          ],
        );
      }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        leading : IconButton(
          icon : Icon(Icons.home),
          onPressed: (){
            print("home clicked");
          },
        ),
        title: Text("Flutter 로 앱 만들기"),
        actions: [
          IconButton(
            icon: Icon(Icons.login),
            onPressed: (){
              //print("로그인 페이지로 이동");
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login(txt: "test message")),);
            }),
          TextButton(
          child: Text('알림'),
          style: TextButton.styleFrom(foregroundColor: Colors.white),
          onPressed: () async {
            var result = await Navigator.pushNamed(context, '/alert',arguments: RouteArguments("데이터 제목", "데이터 콘텐츠"));
            print("result = ${result}");
            print("result = "+ result.toString());
            //Navigator.pushNamed(context, '/alert', arguments: RouteArguments("데이터제목", "데이터 콘텐츠"));
            //print('알림 창 팝업');
    }),
    ],
    ),
    );
  }
}
