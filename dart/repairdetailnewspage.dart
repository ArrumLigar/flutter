import 'package:flutter/material.dart';

// import 'package:latihan/layout/model/Getnews.dart'; // Pastikan path ini benar

class Detailnewspage extends StatelessWidget {
  final Getnews getnews;

  const Detailnewspage({Key? key, required this.getnews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        leading: BackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'id: \$${getnews.id}',
              ),
              Text('Title: \$${getnews.title}'),
              const SizedBox(
                height: 20,
              ),
              const Text('Body: '),
              Text(getnews.body),
            ],
          ),
        ),
      ),
    );
  }
}