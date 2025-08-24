import 'package:flutter/material.dart';
import 'package:list_n_grid/itemPage.dart';

class Gridviewpage extends StatelessWidget {
  const Gridviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    var myPhotos = [
      {
        "img":
            "https://plus.unsplash.com/premium_photo-1673002094195-f18084be89ce?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "title": "Sunset",
      },
      {
        "img":
            "https://images.unsplash.com/photo-1470252649378-9c29740c9fa8?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "title": "Sunrise",
      },
      {
        "img":
            "https://images.unsplash.com/photo-1502085671122-2d218cd434e6?q=80&w=1526&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "title": "Mountain",
      },
      {
        "img":
            "https://images.unsplash.com/photo-1520520731457-9283dd14aa66?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "title": "Sea Beach",
      },
      {
        "img":
            "https://plus.unsplash.com/premium_photo-1664300792059-863ccfe55932?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "title": "Forest",
      },
      {
        "img":
            "https://images.unsplash.com/photo-1542401886-65d6c61db217?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "title": "Desert",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GridView"),
        backgroundColor: Colors.deepOrange,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: myPhotos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => ItemPage(
                        image: myPhotos[index]['img']!,
                        title: myPhotos[index]['title']!,
                      ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.deepOrange,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Image.network(
                    myPhotos[index]['img']!,
                    width: 200,
                    height: 130,
                  ),
                  SizedBox(width: 20),
                  Text(
                    myPhotos[index]['title']!,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
