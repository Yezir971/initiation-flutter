// screen/liste.dart 
import 'package:flutter/material.dart';
class Liste extends StatelessWidget{
  const Liste({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Text("Liste"),
    );
  }
}