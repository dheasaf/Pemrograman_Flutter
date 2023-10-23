import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "Belum ADa Input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(
            fontSize: 35,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Telah di Klik");
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Confirm"),
                content: Text("Are you sure to delete this?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      print("Klik no");
                      setState(() {
                        data = "false";
                      });

                      Navigator.of(context).pop(false); // Tutup dialog
                      // Tambahkan aksi jika tombol "No" ditekan
                    },
                    child: Text("No"),
                  ),
                  TextButton(
                    onPressed: () {
                      print("Klik yes");
                      setState(() {
                        data = "true";
                      });

                      Navigator.of(context).pop(true); // Tutup dialog
                      // Tambahkan aksi jika tombol "Yes" ditekan
                    },
                    child: Text("Yes"),
                  ),
                ],
              );
            },
          ).then((value) {
            return print(value);
          });
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
