import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
      ),
        body: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title:  Text("Dhea Safira"),
              subtitle: Text("This is Suntitle.."),
              leading: CircleAvatar(),
              trailing: Text("10;00 PM"),
              tileColor: Colors.orangeAccent,
              dense: true,
            ),
            Divider(color: Colors.cyan,
            ),

            ListTile(
              title:  Text("Dhea Safira"),
              subtitle: Text("This is Suntitle.."),
              leading: CircleAvatar(),
              trailing: Text("10;00 PM"),
            ),
            Divider(
              color: Colors.cyan,
            ),

            ListTile(
              title:  Text("Dhea Safira"),
              subtitle: Text("This is Suntitle.."),
              leading: CircleAvatar(),
              trailing: Text("10;00 PM"),
            ),
            Divider(
              color: Colors.cyan,
            ),

            ListTile(
              title:  Text("Dhea Safira"),
              subtitle: Text("This is Suntitle.."),
              leading: CircleAvatar(),
              trailing: Text("10;00 PM"),
            ),
          ],
        ),
      )

    );
  }
  }
