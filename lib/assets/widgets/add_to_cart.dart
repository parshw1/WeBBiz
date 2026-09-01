import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget{
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    var button = Text('Add to Cart');
    return ElevatedButton(
      onPressed: () {
        button = Text("Added!");
      },
      child: button,
    );
  }
}