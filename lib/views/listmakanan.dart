import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListMakanan extends StatefulWidget {
  final String idKatMakanan;
  const ListMakanan({Key? key, required this.idKatMakanan}) : super(key: key);

  @override
  State<ListMakanan> createState() => _ListMakananState();
}

class _ListMakananState extends State<ListMakanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kategori Makanan Sehat"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 1,
      ),
    );
  }
}
