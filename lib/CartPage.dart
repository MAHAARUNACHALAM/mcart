import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  //argument Cart will contain the list of products
  //  {
  //     'id': '1',
  //     'title': 'Dell',
  //     'description': 'Dell laptop',
  //     'price': 69999,
  //     'imageUrl':
  //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMg8he6iEidNPOfOSoBGiPz8qOBEgE4xnW0Ey5scOfEA&usqp=CAU&ec=48600113',
  //   },
  //Like in the above format
  @override
  Widget build(BuildContext context) {
    var argument = ModalRoute.of(context)!.settings.arguments;
    var cart = (argument != null) ? argument : List.empty();

    return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        //body will contain the list of products in the cart use cart
        body: Column(
          children: [
            //render
          ],
        ));
  }
}
