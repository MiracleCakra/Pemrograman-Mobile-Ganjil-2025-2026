import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo - cakrawangsa',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue.shade50, 
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade900, 
          elevation: 0,
          titleTextStyle: const TextStyle(
            color: Colors.white,          
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter JSON Demo - cakrawangsa'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Soal 1 - Merubah Warna Tema Aplikasi',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue.shade900,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}