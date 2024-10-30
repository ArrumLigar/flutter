import 'package:flutter/material.dart';

// Function untuk menjalankan aplikasi
void main() {
  runApp(const MyApp());
}

// Class ini dipanggil oleh function runApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Design Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Material Design Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Tambahkan aksi yang diinginkan di sini
          },
          child: const Text('Tekan Saya'),
        ),
      ),
    );
  }
}
