import 'package:flutter/material.dart';
import 'package:mcart/Product.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> productList = [
    Product(
        id: '1',
        title: 'Dell',
        description: 'Dell laptop',
        price: 69999,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMg8he6iEidNPOfOSoBGiPz8qOBEgE4xnW0Ey5scOfEA&usqp=CAU&ec=48600113'),
    Product(
        id: '2',
        title: 'Iphone',
        description: 'Iphone 13 pro ',
        price: 95999,
        imageUrl:
            'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-finish-select-202209-6-1inch-starlight_AV1_GEO_EMEA?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1661027152794'),
    Product(
        id: '3',
        title: 'Samsung Galaxy S21',
        description: 'Samsung Galaxy S21 Smartphone',
        price: 79999,
        imageUrl:
            'https://images.samsung.com/is/image/samsung/assets/in/2201/preorder/1_image_carousel/1_group_kv1/S21FE_Carousel_GroupKV1_PC.jpg'),
    Product(
        id: '4',
        title: 'Sony PlayStation 5',
        description: 'Sony PlayStation 5 Gaming Console',
        price: 49999,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrR0vcQaNHZP1SQVUuJiKQ7QwfDilcdz2yHueDVPrrdNvYZ5MnspOLaQiSrUtWCtvomiS9YvsGPMU&usqp=CAU&ec=48600113'),
    Product(
        id: '5',
        title: 'Canon EOS R5',
        description: 'Canon EOS R5 Mirrorless Camera',
        price: 329999,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgJi5WV7pjWZefovXNllV2LiPWC72a_PEWo2dvoQ5h4A&usqp=CAU&ec=48600113'),
  ];

  List<Product> cart = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Amazon',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.cyanAccent[700],
          actions: [
            IconButton(
              icon: badges.Badge(
                badgeContent: Text(cart.length.toString()),
                badgeColor: Colors.red,
                child: Icon(Icons.shopping_cart),
              ),
              onPressed: () {
                // Handle button press
                Navigator.pushNamed(context, '/cart', arguments: cart);
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //render the ProductList here
              (productList != null)
                  ? Container(
                      height: 500,
                      child: ListView.builder(
                        itemCount: productList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              leading:
                                  Image.network(productList[index].imageUrl),
                              title: Text(productList[index].title),
                              subtitle: Text(productList[index].description),
                              trailing:
                                  Text(productList[index].price.toString()),
                              onTap: () {
                                setState(() {
                                  //add the product to the cart
                                  cart.add(productList[index]);
                                });
                              },
                            ),
                          );
                        },
                      ),
                    )
                  : Container(
                      child: Text('No Products'),
                    )
            ],
          ),
        ));
  }
}
