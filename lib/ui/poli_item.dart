// import flutter material
import 'package:flutter/material.dart';
// external package import -> file model poli dan detail
import '../model/poli.dart';
import 'poli_detail.dart';

// deklarasi class PoliItem dari ancestor StatelessWidget
class PoliItem extends StatelessWidget {
  // public variable
  final Poli poli;

  // constructor
  const PoliItem({super.key, required this.poli});

  // method
  @override
  // deklarasi method build
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${poli.namaPoli}"),
        ),
      ),
      onTap: () {
        // event onclick
        Navigator.push(
            context,
            // event
            MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
      },
    );
  }
}
