import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageGalleryApp extends StatelessWidget {
  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjdDJ6zGDS4PdsegynbUSEL-6U24d7APjj4m70xwsbHQ&s',
    'https://png.pngtree.com/thumb_back/fh260/background/20230519/pngtree-landscape-jpg-wallpapers-free-download-image_2573540.jpg',
    'https://static.vecteezy.com/system/resources/thumbnails/022/666/061/small/owl-face-silhouettes-owl-face-svg-black-and-white-owl-vector.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Galería de Imágenes'),
        ),
        body: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return ImageCard(imageUrl: imageUrls[index]);
          },
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imageUrl;

  const ImageCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageType = imageUrl.substring(imageUrl.lastIndexOf('.') + 1);

    return Card(
      elevation: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imageType.toLowerCase() == 'svg')
            SvgPicture.network(
              imageUrl,
              width: 100,
              height: 100,
            )
          else
            Image.network(
              imageUrl,
              width: 100,
              height: 100,
            ),
        ],
      ),
    );
  }
}

void main() {
  runApp(ImageGalleryApp());
}
