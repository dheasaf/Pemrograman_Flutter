import 'dart:math';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../../models/product.dart';

class HomePage extends StatelessWidget {
  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<product> dummyData = List.generate(
      100,
      (index) {
        return product(
            "https://picsum.photos/id/$index/200",
            faker.food.restaurant(),
            10000 + Random().nextInt(100000),
            faker.lorem.sentence());
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Marketplace"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(dummyData[index].imageURL),
            footer: Container(
              height: 80,
              color: Colors.red.withOpacity(0.5),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    dummyData[index].judul,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rp ${dummyData[index].harga}",
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                  Text(
                    dummyData[index].deskripsi,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: dummyData.length,
      ),
    );
  }
}
