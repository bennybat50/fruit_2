// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:fruit_2/signup_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:fruit_2/signup_page.dart';

class ProductPage extends StatefulWidget {
  final product;
  const ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Container(
                height: 170,
                child: Image.asset(scale: 0.1, "${widget.product.image}")),
          ),
          ClipRRect(
            borderRadius:
                const BorderRadius.only(topRight: Radius.circular(70)),
            child: Container(
                color: Colors.white,
                height: 520,
                width: double.infinity,
                child: Container(
                    // alignment: Alignment.center,

                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: Text('${widget.product.title}',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 10),
                      child: Text('Organic & Healthy',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                    ),
                    Row(
                      children: const [
                        Padding(
                            padding: const EdgeInsets.only(left: 40, top: 40)),
                        FaIcon(
                          FontAwesomeIcons.star,
                          color: Colors.yellow,
                          size: 28,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 0, top: 40)),
                        FaIcon(
                          FontAwesomeIcons.star,
                          color: Colors.yellow,
                          size: 28,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 0, top: 40)),
                        FaIcon(
                          FontAwesomeIcons.star,
                          color: Colors.yellow,
                          size: 28,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 0, top: 40)),
                        FaIcon(
                          FontAwesomeIcons.star,
                          color: Colors.yellow,
                          size: 28,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 0, top: 40)),
                        FaIcon(
                          FontAwesomeIcons.star,
                          color: Colors.yellow,
                          size: 28,
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, top: 10, right: 40),
                      child: Text(
                          'Note: Be aware while using expanded. It will perform its task when its constrained( for column height and for row width, similarly for all widgets) will be known or predefined.Note: Be aware while using expanded. It will perform its task when its constrained( for column height and for row width, similarly for all widgets) will be known or predefined.Note: Be aware while using expanded. It will perform its task when its constrained( for column height and for row width, similarly for all widgets) will be known or predefined.',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70, right: 40),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40, top: 10),
                            child: Text("\$${widget.product.price}",
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400)),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              color: Colors.green,
                              width: 200,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Add to Cart",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))),
          )
        ],
      ),
    );
  }
}
