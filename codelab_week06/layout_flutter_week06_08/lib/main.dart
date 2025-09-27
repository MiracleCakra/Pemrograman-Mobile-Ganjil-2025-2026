// Praktikum 1, Langkah 3: Identifikasi layout diagram

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter layout: Cakra Wangsa M.A.W - 2341720032',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorSchemeSeed: Colors.lightBlueAccent,
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Cakra Wangsa M.A.W - 2341720032'),
//         ),
//         body: const LakeLayout(),
//       ),
//     );
//   }
// }

// class LakeLayout extends StatelessWidget {
//   const LakeLayout({super.key});

//   static const String _desc =
//       'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
//       'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
//       'A gondola ride from Kandersteg, followed by a half-hour walk through pastures '
//       'and pine forest, leads you to the lake, which warms to 20 degrees Celsius '
//       'in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.';

//    Column _buildButton(IconData icon, String label, Color color) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(icon, color: color),
//         const SizedBox(height: 8),
//         Text(label, style: TextStyle(color: color, fontWeight: FontWeight.w600)),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final primary = Theme.of(context).colorScheme.primary;

//     final topImage = Image.network(
//       'https://raw.githubusercontent.com/flutter/website/main/examples/layout/lakes/step5/images/lake.jpg',
//       height: 240, width: double.infinity, fit: BoxFit.cover,
//     );

//     final titleSection = Padding(
//       padding: const EdgeInsets.all(16),
//       child: Row(
//         children: [
//           const Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
//                 SizedBox(height: 8),
//                 Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black54)),
//               ],
//             ),
//           ),
//           const Icon(Icons.star, color: Colors.red),
//           const SizedBox(width: 4),
//           const Text('41'),
//         ],
//       ),
//     );

//     // >>> Ini yang tadi hilang/berubah nama <<<
//     final buttonSection = Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           _buildButton(Icons.call, 'CALL', Color( 0xFF2196F3)),
//           _buildButton(Icons.near_me, 'ROUTE', Color(0xFF2196F3)),
//           _buildButton(Icons.share, 'SHARE', Color(0xFF2196F3)),
//         ],
//       ),
//     );

//     final textSection = const Padding(
//       padding: EdgeInsets.all(24),
//       child: Text(_desc, softWrap: true),
//     );

//     return ListView(
//       children: [
//         topImage,
//         titleSection,
//         buttonSection, // sekarang terdefinisi
//         textSection,
//       ],
//     );
//   }
// }


// Langkah 4: Implementasi title row

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // padding 32 di semua sisi
      child: Row(
        children: [
          Expanded(
            // soal 1: Column di dalam Expanded + crossAxisAlignment.start
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // soal 2: baris pertama di dalam Container dengan bottom padding 8
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Jawa Timur Park 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // soal 2: baris kedua warna abu-abu
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          // soal 3: ikon bintang merah + teks "41"
          const Icon(Icons.star, color: Colors.red),
          const SizedBox(width: 8),
          const Text('4.1'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Cakra Wangsa M.A.W - 2341720032',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cakra Wangsa M.A.W - 2341720032'),
        ),
        // Ganti 'Hello World' dengan titleSection
        body: titleSection,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
