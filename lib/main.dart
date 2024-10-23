import 'package:flutter/material.dart';
import 'home.dart';
import 'dashboard.dart';
import 'add_sale.dart';
import 'update_sale.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Management System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',  // Pastikan initialRoute sesuai
      routes: {
        '/home': (context) => HomePage(),
        '/dashboard': (context) => DashboardPage(),
        '/add': (context) => AddSalePage(),
        '/update': (context) => UpdateSalePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
