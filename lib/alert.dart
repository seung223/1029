import 'package:flutter/material.dart';
import 'package:ten/main.dart';
import 'globals.dart' as globals;

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  RouteArguments routerArguments = RouteArguments("", "");

  @override
  Widget build(BuildContext context) {
    routerArguments = ModalRoute.of(context)! .settings.arguments as RouteArguments;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop("알림창에서 넘어온 메세지");

          },
        ),
      ),
      body: Container(
        child: Center(child: Text(globals.error_code)),
      ),
    );
  }
}
