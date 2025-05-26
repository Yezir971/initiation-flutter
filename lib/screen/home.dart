// screen/home.dart
import 'package:flutter/material.dart';
import '../widget/image_stack.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 10),
              Text("sexy james"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 10),
              Text("Seb le bg"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.access_time),
              SizedBox(width: 50),
              Column(
                children: [Text("james"), SizedBox(width: 10), Text("toto")],
              ),
            ],
          ),
          SizedBox(height: 20),
          // Les images
          // Image.network(
          //   "https://www.echosciences-grenoble.fr/uploads/article/image/attachment/1005418938/xl_lens-1209823_1920.jpg",
          // ),
          // const CircleAvatar(
          //   backgroundImage: AssetImage('image_chapeau_de_paile.jpg'),
          //   maxRadius: 50,
          //   backgroundColor: Colors.green,
          // ),
          Image.asset("image_chapeau_de_paile.jpg"),

          ///
          ///
          ///
          ///
          ///
          // ImageStack('Perroquet', "assets/dsdsq.png")
          // ImageStack('Perroquet', "assets/dsdsq.png")
          ImageStack(
            imageName: 'image_chapeau_de_paile.jpg',
            text: 'ceci exlique cela',
          ),
          ImageStack(imageName: 'image_chapeau_de_paile.jpg', text: 'caca'),

          ///
          ///
          ///
          ///
        ],
      ),
    );
  }
}
