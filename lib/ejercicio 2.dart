import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Producto'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHbhz_U6jo6ncIxm7R7varaVIOfvl8p7YslSeIa6-2Xg&s',
                  width: 1900, // Ajusta el ancho de la imagen
                  height: 300, // Ajusta el alto de la imagen
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Stormblade Gaming PC',
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '\$100.00',
                style: GoogleFonts.roboto(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Experimenta el poder desatado con la Stormblade Gaming PC. Equipada con un procesador de última generación, tarjeta gráfica de alto rendimiento y memoria RAM ultrarrápida, esta PC te llevará a nuevas alturas en el mundo del gaming. Domina tus juegos favoritos con fluidez y precisión, mientras que el diseño aerodinámico y la iluminación RGB te sumergen en una experiencia visual impresionante. ¡Prepárate para conquistar mundos virtuales con la Stormblade Gaming PC!.',
                style: GoogleFonts.nunito(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductDetailsScreen(),
  ));
}
