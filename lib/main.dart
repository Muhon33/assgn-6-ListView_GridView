import 'package:flutter/material.dart';
import 'package:list_n_grid/GridViewPage.dart';
import 'package:list_n_grid/ListViewPage.dart';
import 'package:list_n_grid/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Homepage(),
      routes: {
        'Listviewpage': (context) => Listviewpage(),
        'Gridviewpage': (context) => Gridviewpage(),
      },
    );
  }
}
