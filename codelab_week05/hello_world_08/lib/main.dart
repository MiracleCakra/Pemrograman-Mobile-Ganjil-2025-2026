// import 'package:flutter/material.dart';
// import 'package:hello_world_08/basic_widgets/text_widget.dart';
// import 'package:hello_world_08/basic_widgets/image_widget.dart';
// import 'package:hello_world_08/basic_widgets/loading_cupertino.dart';
// import 'package:hello_world_08/basic_widgets/fab_widget.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
// return MaterialApp(
//   debugShowCheckedModeBanner: false,
//   theme: ThemeData(
//     useMaterial3: true,
//     colorScheme: ColorScheme.fromSeed(
//       seedColor: const Color.fromARGB(255, 75, 2, 201),
//       brightness: Brightness.light,
//     ),
//     textTheme: const TextTheme(
//       headlineLarge: TextStyle(
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.bold,
//         letterSpacing: 1.2,
//       ),
//       bodyMedium: TextStyle(
//         fontFamily: 'Poppins',
//         fontSize: 16,
//       ),
//     ),
//     appBarTheme: const AppBarTheme(
//       centerTitle: true,
//       elevation: 4,
//       shadowColor: Colors.black26,
//       titleTextStyle: TextStyle(
//         fontFamily: 'Poppins',
//         fontSize: 20,
//         fontWeight: FontWeight.w600,
//         color: Colors.white,
//       ),
//       backgroundColor: Color.fromARGB(255, 75, 2, 201),
//     ),
//       cardTheme: CardThemeData(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16),
//         ),
//         elevation: 4,
//         shadowColor: Colors.black26,
//       ),
//       buttonTheme: const ButtonThemeData(
//         shape: StadiumBorder(),
//       ),
//     ),
//     home: const MyHomePage(
//       title: 'Flutter Cakra Wangsa May Ahmad Widodo',
//     ),
//   );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
//   const FabWidget(),
//   const SizedBox(height: 12),
//   AnimatedSwitcher(
//     duration: const Duration(milliseconds: 400),
//     transitionBuilder: (Widget child, Animation<double> animation) {
//       return ScaleTransition(scale: animation, child: child);
//     },
//     child: Text(
//       '$_counter',
//       key: ValueKey<int>(_counter),
//       style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//             fontSize: 48,
//             fontWeight: FontWeight.bold,
//             color: Colors.deepPurpleAccent,
//             shadows: [
//               Shadow(
//                 blurRadius: 8,
//                 color: Colors.black26,
//                 offset: Offset(2, 2),
//               ),
//             ],
//           ),
//     ),
//   ),
// ],
// ),
// ),
// floatingActionButton: FloatingActionButton.extended(
//   onPressed: _incrementCounter,
//   tooltip: 'Tambah Absen',
//   icon: const Icon(Icons.add),
//   label: const Text('Tambah'),
//   backgroundColor: Colors.deepPurple,
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(12),
//   ),
// ),
//     );
//   }
// }

// Langkah 3 Praktikum 5 week 05

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         fontFamily: 'Roboto',
//         scaffoldBackgroundColor: Colors.grey[50],
//       ),
//       home: const MyHomePage(
//         title: 'Increment App - Cakra Wangsa M.A.W - 2341720032',
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineLarge,
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Container(
//           height: 50.0,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment Counter',
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }

// Langkah 4 Praktikum 5 week 05

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// /// Root widget aplikasi Langkah 5
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Contoh TextField")),
//         body: const TextField(
//           obscureText: false,
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Nama',
//           ),
//         ),
//       ),
//     );
//   }
// }

// /// Layout utama berisi tombol
// class MyLayout extends StatelessWidget {
//   const MyLayout({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ElevatedButton.icon(
//           icon: const Icon(Icons.notifications),
//           label: const Text('Show Alert'),
//           style: ElevatedButton.styleFrom(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//             textStyle: const TextStyle(fontSize: 16),
//           ),
//           onPressed: () => showAlertDialog(context),
//         ),
//       ),
//     );
//   }
// }

// void showAlertDialog(BuildContext context) {
//   final okButton = TextButton(
//     child: const Text("OK"),
//     onPressed: () => Navigator.pop(context),
//   );

//   final alert = AlertDialog(
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//     title: const Text("My Title"),
//     content: const Text("INI ADALAH ALERT DIALOG - Cakra Wangsa M.A.W-2341720032"),
//     actions: [okButton],
//   );

//   showDialog(
//     context: context,
//     builder: (context) => alert,
//   );
// }


//import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contoh Date Picker',
      home: MyHomePage(title: 'Contoh Date Picker - Cakra Wangsa M.A.W - 2341720032'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable/State untuk mengambil tanggal
  DateTime selectedDate = DateTime.now();

  //  Initial SelectDate FLutter
  Future<void> _selectDate(BuildContext context) async {
    // Initial DateTime FIinal Picked
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => {
                _selectDate(context),
                // ignore: avoid_print
                print(selectedDate.day + selectedDate.month + selectedDate.year)
              },
              child: const Text('Pilih Tanggal'),
            ),
          ],
        ),
      ),
    );
  }
}