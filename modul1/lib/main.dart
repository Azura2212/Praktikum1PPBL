import 'package:flutter/material.dart';
import 'halaman_utama.dart'; // 1. Tambahkan import ini biar file main kenal HalamanUtama

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // 2. Ganti home-nya jadi HalamanUtama()
      home: const HalamanUtama(), 
    );
  }
}

// 3. Class MyHomePage dan _MyHomePageState yang panjang di bawahnya 
// bisa kamu HAPUS aja semua karena udah nggak dipakai lagi.