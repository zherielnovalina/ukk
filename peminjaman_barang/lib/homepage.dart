import 'package:flutter/material.dart';
import 'package:peminjaman_barang/pages/Login_page.dart';
import 'package:peminjaman_barang/pages/Register_page.dart';

void main() => runApp(peminjamanbarang());

class peminjamanbarang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Peminjaman Barang'),
      ),
      drawer: Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bagian atas dengan gambar yang dapat bergerak
          
          // Tulisan di bawah gambar
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Aplikasi ini digunakan untuk memudahkan jurusan mengenai masalah peminjaman barang',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Tambah Form',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        onTap: (int index) {
          // Fungsi untuk mengganti halaman saat item bottom navigation diklik
          // Misalnya menggunakan Navigator untuk pindah ke halaman yang sesuai
        },
      ),
    );
  }
}
