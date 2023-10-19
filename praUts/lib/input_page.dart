import 'package:flutter/material.dart';
import 'result_page.dart';

void main() {
  runApp(MaterialApp(
    home: InputPage(),
  ));
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController nobpController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController mtkController = TextEditingController();
  TextEditingController bIngController = TextEditingController();
  TextEditingController javaController = TextEditingController();

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide(color: Colors.white, width: 2.0),
  );

  final TextStyle buttonTextStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Data"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Set the background color to white
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            buildLinedTextField(nobpController, "Nomor BP         "),
            buildLinedTextField(namaController, "Nama                 "),
            buildLinedTextField(mtkController, "Matematika       "),
            buildLinedTextField(bIngController, "Bahasa Inggris  "),
            buildLinedTextField(javaController, "Java                    "),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(
                          nobp: nobpController.text,
                          nama: namaController.text,
                          mtk: mtkController.text,
                          bIng: bIngController.text,
                          java: javaController.text,
                        ),
                      ),
                    );
                  },
                  child: Text("Submit",
                      style: buttonTextStyle), // Set text color to white
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    nobpController.clear();
                    namaController.clear();
                    mtkController.clear();
                    bIngController.clear();
                    javaController.clear();
                  },
                  child: Text("Reset",
                      style: buttonTextStyle), // Set text color to white
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLinedTextField(
      TextEditingController controller, String labelText) {
    return Row(
      children: [
        Text(
          labelText + " :",
          style: TextStyle(
              color: Colors.black), // Set text color to black
        ),
        SizedBox(width: 10),
        Container(
          width: 150, // Adjust the box width as needed
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: outlineInputBorder,
              isDense: true, // Reduce the spacing between text and line
            ),
          ),
        ),
      ],
    );
  }
}

class ResultPage extends StatelessWidget {
  final String nobp;
  final String nama;
  final String mtk;
  final String bIng;
  final String java;

  ResultPage({
    required this.nobp,
    required this.nama,
    required this.mtk,
    required this.bIng,
    required this.java,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Nomor BP: $nobp"),
            Text("Nama: $nama"),
            Text("Matematika: $mtk"),
            Text("Bahasa Inggris: $bIng"),
            Text("Java: $java"),
          ],
        ),
      ),
    );
  }
}
