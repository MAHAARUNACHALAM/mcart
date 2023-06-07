import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //create a list of product
  var product = [
    {
      'id': '1',
      'title': 'Dell',
      'description': 'Dell laptop',
      'price': 69999,
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMg8he6iEidNPOfOSoBGiPz8qOBEgE4xnW0Ey5scOfEA&usqp=CAU&ec=48600113',
    },
    //similar for other 4
    {
      'id': '2',
      'title': 'Iphone',
      'description': 'Iphone 13 pro ',
      'price': 95999,
      'imageUrl':
          'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-finish-select-202209-6-1inch-starlight_AV1_GEO_EMEA?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1661027152794',
    },
    {
      'id': '3',
      'title': 'Samsung Galaxy S21',
      'description': 'Samsung Galaxy S21 Smartphone',
      'price': 79999,
      'imageUrl':
          'https://images.samsung.com/is/image/samsung/assets/in/2201/preorder/1_image_carousel/1_group_kv1/S21FE_Carousel_GroupKV1_PC.jpg',
    },
    {
      'id': '4',
      'title': 'Sony PlayStation 5',
      'description': 'Sony PlayStation 5 Gaming Console',
      'price': 49999,
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrR0vcQaNHZP1SQVUuJiKQ7QwfDilcdz2yHueDVPrrdNvYZ5MnspOLaQiSrUtWCtvomiS9YvsGPMU&usqp=CAU&ec=48600113',
    },
    {
      'id': '5',
      'title': 'Canon EOS R5',
      'description': 'Canon EOS R5 Mirrorless Camera',
      'price': 329999,
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgJi5WV7pjWZefovXNllV2LiPWC72a_PEWo2dvoQ5h4A&usqp=CAU&ec=48600113',
    }
  ];

  var cart = [];

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
              onPressed: () {
                Navigator.pushNamed(context, '/cart', arguments: cart);
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //render the product in a card
              ...product.map((item) {
                return Container(
                  alignment: Alignment.center,
                  child: Card(
                    elevation: 10,
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        //render the image
                        Image.network(
                          item['imageUrl'].toString(),
                          width: 200,
                          height: 200,
                        ),
                        //render the title
                        Text(
                          item['title'].toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //render the description
                        Text(
                          item['description'].toString(),
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        //render the price
                        Text(
                          item['price'].toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //render the button
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                cart.add(item);
                              });
                            },
                            child: Text('Add to Cart'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyanAccent[700],
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            )),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
        ));
  }
}
