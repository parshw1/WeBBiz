import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool Checkout = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Checkout? Center(
        child: Text("Checkout Successful!",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
      )

      :
      Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Wrap(
              children: [
                SizedBox(
                  height: 100,
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.shopping_bag),
                      title: Text("Lakme"),
                      subtitle: Text("Eyeconic Kajal - Black, 0.35 g"),
                      trailing: Text("Rs. 180"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.shopping_bag),
                      title: Text("Maybelline"),
                      subtitle: Text("Fit Me Matte Foundation - 110, 30 ml"),
                      trailing: Text("Rs. 200"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.shopping_bag),
                      title: Text("Puma"),
                      subtitle: Text("Phase Class Tote Bag - Black, 20 L"),
                      trailing: Text("Rs. 1300"),
                    ),
                  ),
                ),
              ]
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Checkout = true;
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text("Checkout",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}