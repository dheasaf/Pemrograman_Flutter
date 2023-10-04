import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        appBar: AppBar(
          title: Text("My Apps")
        ),
        body: Center(
          child: Text(
              "ajdnhenfkcwefhkawdnankxala xajssdklwekrw3 dkasxiad qjqwf ajx jdbwdiewjf axerkquwd dstsje dhsywnsbh shsgts",
            maxLines: 2,
            textAlign: TextAlign.right,
            style: TextStyle(
              backgroundColor: Colors.cyan,
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'DelaGothicOne',
              decorationStyle: TextDecorationStyle.dotted,
              decoration: TextDecoration.underline,
              decorationColor: Colors.cyanAccent,
              decorationThickness: 2,


            ),
          ),
        ),
      ),
    );
  }

}

