import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ppl_agile/controller/kategorimakanan_controller.dart';
import 'dart:async';

import 'package:ppl_agile/models/kategori_makanan.dart';
import 'package:ppl_agile/views/listmakanan.dart';

class ListKategori extends StatefulWidget {
  const ListKategori({super.key});

  @override
  State<ListKategori> createState() => _ListKategoriState();
}

class _ListKategoriState extends State<ListKategori> {
  List<KategoriMakanan> kategoriMakanan = [];
  ListKategoriMakanan listKatMakanan = ListKategoriMakanan();

  Future<void> getData() async {
    kategoriMakanan = await listKatMakanan.getData();
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Kategori Makanan Indonesia"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 1,
        child: ListView.separated(
          itemCount: kategoriMakanan.length,
          itemBuilder: (context, index) {
            // final int params = listProject[index].id_proyek;
            // final KategoriMakanan katMakanan = kategoriMakanan[index];

            return ListTile(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.blueAccent,
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              title: Wrap(
                children: [
                  Text(
                    kategoriMakanan[index].namaKat,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListMakanan(
                      idKatMakanan: kategoriMakanan[index].idKat.toString(),
                    ),
                  ),
                );
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),
    );
  }
}
