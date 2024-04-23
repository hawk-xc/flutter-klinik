// disini saya akan mencoba menjelaskan selaras dengan bahasa saya dan teman saya robot codeium

// disini ada 2 import, untuk import line 4 flutter material atau biasa disebut modul/package dan line 5 ialah external file, istilahnya kita menggunakan extends atau yield
import 'package:flutter/material.dart';
import '/ui/poli_page.dart';

// dart menggunakan paradigma pemrograman prosedural sedangkan flutter OOP, disini kita perlu memanggil class runApp pada fungsi main, yang dimana fungsi main akan dieksekusi pertama kali
void /* kekonsongan / tidak menjalankan return */ main() => runApp(
    MyApp()) /* MyApp adalah library yang saya import dari flutter material */;

// class MyApp melakukan inheritance dari flutter material StatelessWidget (ancestor)
// istilah mudahnya ada 2 material widget diflutter, stateless dan stateful
class MyApp extends StatelessWidget {
  @override /* melakukan overriding / menimpa dengan method build */

  Widget /* Type Injection */ build(
      BuildContext /* type inject */ context /* variabel */) {
    // mengembalikan method MaterialApp dalam bentuk objek
    return MaterialApp(
      title: 'Klinik App', // judul
      debugShowCheckedModeBanner:
          false, // kata temanku : Potongan kode ini mengatur visibilitas banner yang muncul dalam mode debug menjadi tidak terlihat (false).
      home:
          PoliPage(), // kita akan memanggil class dari file polipage yang kita import diatas diline 5
    );
  }
}

// jangan lupa titik koma