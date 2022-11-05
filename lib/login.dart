import 'dart:developer';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  var txt = "";
  Login({Key? key, required this.txt}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        child: Center(child: Text(widget.txt)),
      ),
    );
  }
}
