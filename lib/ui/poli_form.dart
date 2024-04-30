// import flutter material
import 'package:flutter/material.dart';

// deklarasi class PoliItem dari ancestor StatefulWidget
class PoliForm extends StatefulWidget {
  // deklarasi constructor
  const PoliForm({Key? key}) : super(key: key);
  _PoliFormState createState() => _PoliFormState();
}

// deklarasi class _PoliFormState
class _PoliFormState extends State<PoliForm> {
  // deklarasi method build
  final _formKey = GlobalKey<FormState>();
  @override
  // deklarasi method build
  Widget build(BuildContext context) {
    // mengembalikan antarmuka UI widget Scaffold
    return Scaffold(
      // title pada Navbar
      appBar: AppBar(title: const Text("Tambah Poli")),
      // content body
      body: SingleChildScrollView(
        // form widget
        child: Form(
          // form key
          key: _formKey,
          // column widget
          child: Column(
            // tab event dari Statefull widget
            children: [
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Poli")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
            ],
          ),
        ),
      ),
    );
  }
}
