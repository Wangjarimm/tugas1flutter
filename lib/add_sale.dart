import 'package:flutter/material.dart';

class AddSalePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Sale'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'No Faktur'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Tanggal'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nama Customer'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Jumlah Barang'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Total Penjualan'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Simpan data
                  }
                },
                child: Text('Simpan'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
