import 'package:flutter/material.dart';


class ImageStack extends StatelessWidget {
  final String imageName;
  final String text;
  const ImageStack({super.key, required this.imageName, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('image_chapeau_de_paile.jpg'),
              image: AssetImage(imageName),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 40,
          right: 40,

          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(text),
            ),
          ),
        ),
      ],
    );
  }
}
