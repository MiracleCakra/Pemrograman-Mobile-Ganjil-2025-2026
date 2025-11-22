import 'package:flutter/material.dart';
import 'dart:convert'; 
import 'package:store_data_cakrawangsa/model/pizza.dart';

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
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue.shade50,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade900,
          elevation: 0,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Pizza> myPizzas = [];
  bool isLoading = true; // Penanda status loading
  String errorMsg = '';  // Penanda jika ada error

  @override
  void initState() {
    super.initState();
    // Kita panggil fungsi wrapper agar bisa pakai try-catch
    loadData();
  }

  void loadData() async {
    try {
      List<Pizza> data = await readJsonFile();
      setState(() {
        myPizzas = data;
        isLoading = false; // Matikan loading jika sukses
      });
    } catch (e) {
      setState(() {
        errorMsg = e.toString(); // Simpan pesan error
        isLoading = false;       // Matikan loading biar error terlihat
      });
      print("Error Terdeteksi: $e");
    }
  }

  String convertToJSON(List<Pizza> pizzas) {
    return jsonEncode(pizzas.map((pizza) => pizza.toJson()).toList());
  }

  Future<List<Pizza>> readJsonFile() async {
    // Pastikan nama file ini benar dan ada di assets
    String myString = await DefaultAssetBundle.of(context)
        .loadString('assets/pizzalist_broken.json');
    
    List pizzaMapList = jsonDecode(myString);

    List<Pizza> myPizzas = [];
    for (var pizza in pizzaMapList) {
      Pizza myPizza = Pizza.fromJson(pizza);
      myPizzas.add(myPizza);
    }

    String json = convertToJSON(myPizzas);
    print("=== HASIL SERIALISASI JSON ===");
    print(json);
    
    return myPizzas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter JSON Demo - cakrawangsa'),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator()) // Tampilkan spinner jika loading
          : errorMsg.isNotEmpty
              ? Center(child: Text("Error: $errorMsg", textAlign: TextAlign.center, style: const TextStyle(color: Colors.red))) // Tampilkan Error jika gagal
              : ListView.builder(
                  itemCount: myPizzas.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: ListTile(
                        title: Text(
                          myPizzas[index].pizzaName,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // PERBAIKAN SUBTITLE SESUAI REQUEST:
                        subtitle: Text("${myPizzas[index].description} - € ${myPizzas[index].price}"),
                        leading: const Icon(Icons.local_pizza, color: Colors.orange),
                      ),
                    );
                  },
                ),
    );
  }
}