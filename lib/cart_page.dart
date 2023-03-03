import 'package:flutter/material.dart';
import 'package:fruit_2/grid_page_.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // ignore: non_constant_identifier_names
  var OBJ2 = [
    {"image": 'assets/img/lemon.png', "title": 'Goodluck', "price": '200', "count":0},
    {"image": 'assets/img/banna.png', "title": 'Goodluck', "price": '200',"count":0},
    {"image": 'assets/img/mango.png', "title": 'Goodluck', "price": '200',"count":0},
    {"image": 'assets/img/straberry.png', "title": 'Goodluck', "price": '200',"count":0},
  ];
  int _itemCount = 0;

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
                     "${OBJ2[index]['image']}" ,
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
                            onPressed: () => setState(() =>
                                _itemCount != 0 ? _itemCount -- : _itemCount),
                            icon: Icon(Icons.remove)),
                        Text(
                          _itemCount.toString(),
                          style: TextStyle(fontSize: 14),
                        ),
                        IconButton(
                            onPressed: () => setState(() =>
                                 _itemCount ++ ),
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
