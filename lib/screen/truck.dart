// screen/truck.dart 
import 'package:flutter/material.dart';
class Truck extends StatelessWidget{
  const Truck({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Text("Truck"),
    );
  }
}