import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget{
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  var button = Text('Add to Cart');

  @override
  Widget build(BuildContext context) {
    var button = Text('Add to Cart');
    return ElevatedButton(
      onPressed: () {
        setState(() {
          button = Text("Added!");
        });
      },
      child: button,
    );
  }
}