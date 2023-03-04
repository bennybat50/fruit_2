import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var OBJ2 = [
    {
      "image": 'assets/img/lemon.png',
      "title": 'Goodluck',
      "price": 199.99,
      "count": 1
    },
    {
      "image": 'assets/img/banna.jpeg',
      "title": 'Goodluck',
      "price": 129.85,
      "count": 1
    },
    {
      "image": 'assets/img/mango.png',
      "title": 'Goodluck',
      "price": 23.99,
      "count": 1
    },
    {
      "image": 'assets/img/strawberry.png',
      "title": 'Goodluck',
      "price": 100.99,
      "count": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightGreen[100],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: ListView(
          children: [
            const Text(
              "Your Cart",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: OBJ2.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "${OBJ2[index]['image']}",
                      width: 110,
                      height: 110,
                      fit: BoxFit.contain,
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "${OBJ2[index]['title']}",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$${OBJ2[index]['price']}",
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 14, color: Colors.green),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (OBJ2[index]['count'] == 1) {
                                  OBJ2.removeAt(index);
                                } else {
                                  OBJ2[index]['count'] =
                                      int.parse("${OBJ2[index]['count']}") - 1;
                                }
                              });
                            },
                            icon: Icon(Icons.remove)),
                        Text(
                          "${OBJ2[index]['count']}",
                          style: TextStyle(fontSize: 14),
                        ),
                        IconButton(
                            onPressed: () {
                              var count = int.parse("${OBJ2[index]['count']}");
                              var price =
                                  double.parse("${OBJ2[index]['price']}");
                              setState(() {
                                OBJ2[index]['count'] =
                                    count + 1; //Increase number
                                OBJ2[index]['price'] = price * count;
                              });
                            },
                            icon: Icon(Icons.add)),
                      ],
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
