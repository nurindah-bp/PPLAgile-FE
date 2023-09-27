import 'package:flutter/material.dart';
import 'package:ppl_agile/controller/kategorimakanan_controller.dart';
import 'package:ppl_agile/views/listkategori.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListKategori(),
    );
  }
}
