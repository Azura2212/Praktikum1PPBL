import 'package:flutter/material.dart';
import 'profil_card.dart';
import 'penghitung_suka.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Praktikum Widget Flutter',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfilCard(
              nama: 'Nama Mahasiswa',
              nim: 'NIM: 123456789',
              prodi: 'Sistem Informasi Kota Cerdas',
            ),
            const SizedBox(height: 20),
            const Text(
              'Statistik Interaksi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const PenghitungSuka(),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: KotakInfo(
                    judul: 'Status',
                    isi: 'Mahasiswa Aktif',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: KotakInfo(
                    judul: 'Semester',
                    isi: 'Semester 3',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class KotakInfo extends StatelessWidget {
  final String judul;
  final String isi;

  const KotakInfo({
    super.key,
    required this.judul,
    required this.isi,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.indigo.withValues(alpha: 0.05),
        border: Border.all(
          color: Colors.indigo,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(isi),
        ],
      ),
    );
  }
}