import 'package:flutter/material.dart';
import 'package:mcart/Product.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    // var argument = ModalRoute.of(context)!.settings.arguments;
    //Get the list of products in the cart as Product modal
    List<Product> cart =
        ModalRoute.of(context)!.settings.arguments as List<Product>;
    // Product cart = argument as Product;

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
        body: (cart.length != 0)
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
                      setState(() {
                        cart.clear();
                      });
                    },
                    child: Text('Clear Cart'),
                  ),
                ],
              )
            : Center(
                child: Text('No items in the cart'),
              ));
  }
}
