import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Categorized List with Fonts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'category': 'alimentos',
      'name': 'Manzana',
      'image': 'https://www.recetasnestle.com.pe/sites/default/files/2022-07/tipos-de-manzana-royal-gala.jpg', 
    },
    {
      'category': 'animales',
      'name': 'Perro',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOQp0g1FepJUymSoMZotqf9AZbZP6ySPAy2Do-dCa3Dg&s', 
    },
    {
      'category': 'lugares',
      'name': 'París',
      'image': 'https://viajes.nationalgeographic.com.es/medio/2023/01/31/2023_7fffe24b_230131085752_800x800.jpg', 
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista con Imágenes y Fuentes'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: Image.network(item['image']!), // Usa Image.network para imágenes en línea
            title: Text(
              item['name']!,
              style: _getTextStyle(item['category']!),
            ),
          );
        },
      ),
    );
  }

  TextStyle _getTextStyle(String category) {
    switch (category) {
      case 'alimentos':
        return GoogleFonts.openSans(fontSize: 20);
      case 'animales':
        return GoogleFonts.lato(fontSize: 20);
      case 'lugares':
        return GoogleFonts.ubuntu(fontSize: 20);
      default:
        return TextStyle(fontSize: 20);
    }
  }
}
