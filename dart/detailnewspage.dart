import 'package:flutter/material.dart';
//import 'package:latihan/layout/model/Getnews.dart'; // Pastikan path ini benar

class Detailnewspage extends StatelessWidget {
  final Getnews getnews;

  const Detailnewspage({Key? key, required this.getnews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ), // AppBar
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'id: \$${getnews.id}',
            ), // Text
            Text('Title: \$${getnews.title}'),
            const SizedBox(
              height: 20,
            ), // SizedBox
            const Text('Body: '), // Menampilkan teks "Body: "
            Text(getnews.body), // Menampilkan body dari objek getnews
          ],
        ),
      ),
    );
  }
}