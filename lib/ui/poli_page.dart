// flutter => library
// material => package

// method => object Class
// function => prosedural

import 'package:flutter/material.dart'; // import package material dari flutter library
import '../model/poli.dart'; // import model poli, disini hanya untuk kita melakukan inject variable untuk dapat dimasukkan ke poli detail
import 'poli_detail.dart'; // import poli detail1
import 'poli_item.dart'; // import poli item
import 'poli_form.dart'; // import poli form

// disini class PoliPage inheritance dari ancestor Statefull, dimana akan menimbulkan event onclick untuk summon tab
class PoliPage extends StatefulWidget {
  const PoliPage(
      // mendeklarasikan konstruktor PoliPage
      {super.key}); // Potongan kode ini mendefinisikan sebuah konstruktor untuk kelas PoliPage yang menerima parameter opsional dengan nama key dan mengirimkannya ke konstruktor superclass menggunakan super.key.

  // melakukan overriding
  @override
  // Metode ini digunakan untuk membuat state untuk objek PoliPage.
  State<PoliPage> createState() => _PoliPageState();
}

// Potongan kode ini mendefinisikan sebuah kelas _PoliPageState yang meng-extend kelas State dan mengimplementasikan PoliPage sebagai type parameter. Kelas ini digunakan untuk mendefinisikan state untuk objek PoliPage.
class _PoliPageState extends State<PoliPage> {
  // overriding
  @override /* overriding */
  // Potongan kode ini mendefinisikan metode build() yang mengembalikan objek Widget. Metode ini digunakan untuk membangun tampilan UI dari objek PoliPage. Parameter BuildContext context digunakan untuk mengakses konteks pembangunan yang digunakan untuk mengambil informasi seperti ukuran layar dan tema aplikasi.
  Widget build(BuildContext context) {
    // mengembalikan antarmuka UI widget Scaffold pada laravel
    return Scaffold(
      // title pada Navbar
      appBar: AppBar(
        // app bar adalah nav
        // title akan ditampilan sebagai header
        title: const Text("Data Poli"),
        // menambahkan icon pada navbar
        // menambahkan event click pada navbar untuk event add new poli
        actions: [
          // component card yang dideklarasikan pada method GestureDetector
          GestureDetector(
            // component card yang dideklarasikan pada method GestureDetector
            child: const Icon(Icons.add),
            // menambahkan event click pada navbar untuk event add new poli
            onTap: () {
              // menambahkan event click pada navbar untuk event add new poli
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliForm()));
            },
          )
        ],
      ),
      // content body
      body: ListView(
        // component pada body dideklarasikan pada method ListView
        children: [
          // tambah pertemuan 5
          // penyederhanaan setelah kita melakukan implementasi poli_item
          //  deklarasi instance dari ancestor PoliItem
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
          // component card yang dideklarasikan pada method GestureDetector
        ],

/*
kode sebelumnya
GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = new Poli(namaPoli: "Poli Anak");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliAnak)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Kandungan"),
              ),
            ),
            onTap: () {
              Poli poliKandungan = new Poli(namaPoli: "Poli Kandungan");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliKandungan)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Gigi"),
              ),
            ),
            onTap: () {
              Poli poliGigi = new Poli(namaPoli: "Poli Gigi");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliGigi)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Umum"),
              ),
            ),
            onTap: () {
              Poli poliUmum = new Poli(namaPoli: "Poli Umum");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliUmum)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli THT"),
              ),
            ),
            onTap: () {
              Poli poliTHT = new Poli(namaPoli: "Poli THT");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliTHT)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Jantung"),
              ),
            ),
            onTap: () {
              Poli poliJantung = new Poli(namaPoli: "Poli Jantung");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliJantung)));
            },
          ),
*/
      ),
    );
  }
}
