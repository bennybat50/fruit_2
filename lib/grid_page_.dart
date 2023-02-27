import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_2/product_page.dart';

import 'all_products.dart';
import 'signup_page.dart';

// import 'package:fruit_2/signup_page.dart';
final list = ['assets/img/avatar.png', 'assets/img/apple.png','assets/img/avatar.png','assets/img/avatar.png','assets/img/avatar.png','assets/img/avatar.png'];

class ListObject {
  final String title;
  final String image;
  final String price;

  ListObject({this.title = '', this.image='', this.price='',});
}

final OBJ = [
  ListObject(image:'assets/img/avatar.png', title: 'Goodluck', price: '20' ),
  ListObject(image:'assets/img/avatar.png', title: 'Goodluck me', price: '20' ),
    ListObject(image:'assets/img/avatar.png', title: 'Goodluck me 3', price: '20' ),
  ListObject(image:'assets/img/avatar.png', title: 'Goodluck me 4', price: '20' ),
    ListObject(image:'assets/img/avatar.png', title: 'Goodluck me 4', price: '20' ),
];

class GridPage extends StatefulWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: OBJ.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
      itemBuilder:(context, index){
      final item = OBJ[index];

       return Padding(padding: const EdgeInsets.all(10.0),
         child: GridCard(image: item.image, title: item.title, price: item.price,),
       );
      }
      
      );

  }
}

class GridCard extends StatelessWidget {
  const GridCard({
    Key? key, required this.image, required this.title, required this.price,
  }) : super(key: key);
  
final String image;
final String title;
final String price;


  @override
  Widget build(BuildContext context) {
    return Container(
    height: 50,
    width: 50,
    color: Colors.red,
    child: Column(children: [
        Image.asset(image, width: 20, height: 20,),
        Text(title),
        Text(price)
    ]),
    );
  }
}


