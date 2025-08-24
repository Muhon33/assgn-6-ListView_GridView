import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final String image, title;
  const ItemPage({required this.image, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          width: 700,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(image, height: 300),
                SizedBox(height: 20),
                Text(title, style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
