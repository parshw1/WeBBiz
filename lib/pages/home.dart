import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Image.asset(
                'lib/assets/images/banner.png',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Products',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset('lib/assets/images/product1.webp'),
                        ListTile(
                          title: Text('Lakme'),
                          subtitle: Text('Eyeconic Kajal - Black, 0.35 g'),
                          trailing: Text('Rs. 180'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Card(
                    child: Column(
                      children: [
                        Image.asset('lib/assets/images/product4.png'),
                        ListTile(
                          title: Text('Cult'),
                          subtitle: Text("Men's Trendy T-shirt"),
                          trailing: Text('Rs. 1200'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}