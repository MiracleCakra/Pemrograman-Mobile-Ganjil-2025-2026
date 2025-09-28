import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = ListTile(
      title: const Text(
        'Wisata Gunung Kelud',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        'Kabupaten Kediri, Jawa Timur',
        style: TextStyle(color: Colors.grey[500]),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.red[500]),
          const Text('5.0'),
        ],
      ),
      contentPadding: const EdgeInsets.all(32),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'REVIEW'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
          'Gunung Kelud berada di Jawa Timur dengan ketinggian sekitar 1.731 mdpl. '
          'Dikenal sebagai gunung berapi aktif, Kelud menawarkan pemandangan kawah '
          'menawan dan udara sejuk, menjadikannya tujuan populer untuk wisata alam.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Destinasi Wisata Jawa Timur')),
        body: ListView(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset(
                  'images/gunungkelud.jpg',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    color: Colors.black54,
                    child: const Text(
                      'Gunung Kelud',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            titleSection,
            Card(
              margin: const EdgeInsets.all(16.0),
              elevation: 4.0,
              child: Column(children: [buttonSection, textSection]),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}  