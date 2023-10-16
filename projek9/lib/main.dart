import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> mylist = [
    {
      "Name": "dhea",
      "Age": 19,
      "favColor": [
        "black",
        "pink",
        "yellow",
        "black",
        "pink",
        "yellow" "black",
        "pink",
        "yellow" "black",
        "pink",
        "yellow"
      ]
    },
    {
      "Name": "safira",
      "Age": 19,
      "favColor": ["black", "amber", "green"]
    },
    {
      "Name": "dhea",
      "Age": 19,
      "favColor": [
        "black",
        "pink",
        "yellow",
        "black",
        "pink",
        "yellow" "black",
        "pink",
        "yellow" "black",
        "pink",
        "yellow"
      ]
    },
    {
      "Name": "dhea",
      "Age": 19,
      "favColor": [
        "black",
        "pink",
        "yellow",
        "black",
        "pink",
        "yellow" "black",
        "pink",
        "yellow" "black",
        "pink",
        "yellow"
      ]
    },
    {
      "Name": "safira",
      "Age": 19,
      "favColor": ["black", "amber", "green"]
    },
    {
      "Name": "dhea",
      "Age": 19,
      "favColor": [
        "black",
        "pink",
        "yellow",
        "black",
        "pink",
        "yellow" "black",
        "pink",
        "yellow" "black",
        "pink",
        "yellow"
      ]
    },
    {
      "Name": "safira",
      "Age": 19,
      "favColor": ["black", "amber", "green"]
    },
    {
      "Name": "dhea",
      "Age": 19,
      "favColor": [
        "black",
        "pink",
        "yellow",
        "black",
        "pink",
        "yellow" "black",
        "pink",
        "yellow" "black",
        "pink",
        "yellow"
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID Apps"),
        ),
        body: ListView(
          children: mylist.map((data) {
            print(data["favColor"]);
            List myfavcolor = data["favColor"];
            print("-----");
            print("favColor");
            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.brown.withOpacity(1),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text("Age:  ${data['Age']}"),
                          ],
                        ),
                      ],
                    ),
                    //favColor
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: myfavcolor.map((color) {
                          return Container(
                            color: Colors.yellowAccent,
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
