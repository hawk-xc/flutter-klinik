// import package material
import 'package:flutter/material.dart';
// import model poli
import '../model/poli.dart';

// class PoliDetail merepresentasikan ketika PoliDetail dipanggil atau mendapat event click dari StatefulWidget
class PoliDetail extends StatefulWidget {
  // menyimpan instance dari class Poli
  final Poli poli;

  // fetching variable PoliDetail()
  // konstraktor PoliDetail
  const PoliDetail(
      {super.key /* fetch konstruktor variabel ancestor */,
      required this.poli /* self instance */});

  // overriding
  @override

  // createState() => _PoliDetailState(); adalah metode createState yang mengembalikan instance dari kelas _PoliDetailState.
  State<PoliDetail> createState() => _PoliDetailState();
}

/*
class _PoliDetailState extends State<PoliDetail> { adalah definisi dari kelas _PoliDetailState yang merupakan implementasi dari kelas State untuk kelas PoliDetail.

Kelas _PoliDetailState merupakan kelas yang mengimplementasikan logika dan perilaku dari widget PoliDetail. Ini adalah tempat Anda dapat menulis kode untuk mengatur dan mengupdate tampilan widget PoliDetail secara dinamis.
*/
class _PoliDetailState extends State<PoliDetail> {
  // overriding
  @override

  // widget build . type inject BuildContext variabel context
  Widget build(BuildContext context) {
    // return scaffold widget
    return Scaffold(
      // navbar title
      appBar: AppBar(title: Text("Detail Poli")),
      // body component
      body: Column(
        // tab event dari Statefull widget
        children: [
          // box size (screen)
          SizedBox(height: 28),
          // blueprint variable darii class poli -> namaPoli
          Text(
            "Nama Poli : ${widget.poli.namaPoli}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 28),
          // Scaffold Table component
          Row(
            // adalah properti yang digunakan dalam Flutter untuk mengatur penempatan dan penyejajaran ruang kosong di sumbu utama (horizontal) dalam sebuah kontainer.

            // main Axis gap spaceEvenly
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // button widget
              ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }
}
