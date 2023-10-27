import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: Colors.grey,
              // height: 100,
              width: 250,
              child: Switch(
                activeColor: Colors.green,
                activeTrackColor: Colors.black,
                inactiveTrackColor: Colors.black,
                inactiveThumbColor: Colors.red,
                activeThumbImage: AssetImage("images/true.jpeg"),
                inactiveThumbImage: AssetImage("images/false.jpeg"),
                value: statusSwitch,
                onChanged: (value) {
                  setState(() {
                    statusSwitch = !statusSwitch;
                  });
                  print(statusSwitch);
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              (statusSwitch == true) ? "Switch On" : "Switch Off",
              style: TextStyle(
                fontSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
