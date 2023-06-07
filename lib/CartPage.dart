import 'package:flutter/material.dart';
import 'package:mcart/Product.dart';
import 'package:provider/provider.dart';

import 'CartModal.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Cart'),
            backgroundColor: Colors.cyanAccent[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            )),
        //body will contain the list of products in the cart use cart
        body: Consumer<CartModel>(
          builder: (context, cartModel, _) {
            final cart = cartModel.cart;
            return cart.length != 0
                ? Column(
                    children: [
                      Container(
                        height: cart.length * 100.0,
                        child: ListView.builder(
                          itemCount: cart.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: ListTile(
                                leading: Image.network(cart[index].imageUrl),
                                title: Text(cart[index].title),
                                subtitle: Text(cart[index].description),
                                trailing: Text(cart[index].price.toString()),
                              ),
                            );
                          },
                        ),
                      ),
                      //cart total
                      Text(
                        'Total: \$${cart.fold(0.0, (previousValue, element) => previousValue + element.price)}',
                        style: TextStyle(fontSize: 30),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          cartModel.clearCart();
                        },
                        child: Text('Clear Cart'),
                      ),
                    ],
                  )
                : Center(child: Text('No items in the cart'));
          },
        ));
  }
}
