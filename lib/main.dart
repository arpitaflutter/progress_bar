import 'dart:async';

import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: theme(),
    ),
  );
}


class theme extends StatefulWidget {
  const theme({Key? key}) : super(key: key);

  @override
  State<theme> createState() => _themeState();
}

class _themeState extends State<theme> {

  double progres = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progres),
              SizedBox(height: 30,),
              LinearProgressIndicator(value: progres),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: () {
                Timer.periodic(Duration(seconds: 1), (timer) {
                  setState(() {
                    progres=progres+0.1;
                  });
                });
              }, child: Text("Start"))
            ],
          ),
        ),
      ),
    );
  }
}
