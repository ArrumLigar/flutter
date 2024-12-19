import 'package:flutter/material.dart';
//import 'package:latihan/layout/model/Getnews.dart'; // Pastikan path ini benar
import 'Detailnewspage.dart';

class Newscard extends StatelessWidget {
  final Getnews getnews;

  const Newscard({Key? key, required this.getnews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Detailnewspage(getnews: getnews);
            },
          ), // MaterialPageRoute
        );
      },
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(posts.id.toString()), // Hapus baris ini karena tidak relevan
            Text(
              getnews.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ), // TextStyle
            ), // Text
            const SizedBox(
              height: 10,
            ), // SizedBox
            Text(getnews.body),
          ],
        ), // Column
      ), // Container
    ); // InkWell
  }
}