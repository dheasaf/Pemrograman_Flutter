import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        primaryColor: Color(0xff5D4524),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.blue,
            fontFamily: "NewTegomin",
          ),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.red,
          iconTheme: IconThemeData(
            color: Colors.lime,
            size: 20,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is a Text.",
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "This is a Text.",
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Button",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mediation),
      ),
    );
  }
}
