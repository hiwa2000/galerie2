import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bildergalerie',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _imagePaths = [
    'images/1.jpg',
    'images/2.avif',
    'images/3.avif',
    'images/4.webp',
    'images/5.avif',
    'images/6.avif',
    'images/7.avif',
    'images/8.avif',
    'images/9.avif',
    'images/10.avif',

    
    // Füge hier weitere Bildpfade hinzu
  ];

  Future<void> _pickImage() async {
    // Hier könntest du den Bildauswahl-Code einfügen, wenn du Bilder dynamisch auswählen möchtest.
  }

  void _removeImage(int index) {
    setState(() {
      _imagePaths.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bildergalerie'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: _pickImage,
            child: Text('Bild auswählen'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _imagePaths.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Image.asset(_imagePaths[index]), // Verwende Image.asset für lokale Bilder
                  onTap: () => _removeImage(index), // Bonus: Bild entfernen
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
