import 'package:flutter/material.dart';

class product {
  @required
  String judul;
  @required
  String imageURL;
  @required
  int harga;
  @required
  String deskripsi;

  product(this.imageURL, this.judul, this.harga, this.deskripsi);
}
