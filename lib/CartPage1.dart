import 'package:flutter/material.dart';

class CartScreen1 extends StatefulWidget {
  const CartScreen1({super.key});

  @override
  State<CartScreen1> createState() => _CartScreen1State();
}

class _CartScreen1State extends State<CartScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CartPage',
        ),
        titleTextStyle: TextStyle(fontSize: 20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        )),
        // backgroundColor: Colors.black,
        actions: [IconButton(onPressed: null, icon: Icon(Icons.logout))],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(alignment: Alignment.center, child: Text('Hello world')),
          Container(
              alignment: Alignment.centerLeft, child: Text('Hello world')),
          Container(
              alignment: Alignment.centerLeft, child: Text('Hello world')),
          Container(
              alignment: Alignment.centerLeft, child: Text('Hello world')),
          Container(
              alignment: Alignment.centerLeft, child: Text('Hello world')),
          Container(
              alignment: Alignment.centerLeft, child: Text('Hello world')),
          Container(
              alignment: Alignment.centerLeft, child: Text('Hello world')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag), label: 'Shopping bag'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket), label: 'BAscket')
      ]),
    );
  }
}
