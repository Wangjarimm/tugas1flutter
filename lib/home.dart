import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas/dashboard.dart';
import 'package:tugas/login.dart';
import 'package:tugas/update_sale.dart';
import 'package:tugas/add_sale.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Management System'),
      ),
      body: SingleChildScrollView(  // Bungkus dengan SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: 
          Column(
            children: [
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildMenuItem(context, Icons.dashboard, 'Dashboard', '/dashboard'),
                  _buildMenuItem(context, Icons.add, 'Add', '/add'),
                  _buildMenuItem(context, Icons.update, 'Update', '/update'),
                  _buildMenuItem(context, Icons.logout, 'Logout', '/login'),
                ],
              ),
              SizedBox(height: 50),
              Text('Nama: Gaizka Wisnu Prawira'),
              Text('NPM: 714220011'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, IconData icon, String label, String route) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50),
            SizedBox(height: 10),
            Text(label),
          ],
        ),
      ),
    );
  }
}
