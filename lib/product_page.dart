// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
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
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final dio = Dio();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getSingleProduct();
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: FutureBuilder(
          initialData: {},
          future: getSingleProduct(),
          builder: (context, snapshot) {
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Container(
                      height: 170,
                      child: Image.network(
                          scale: 0.1, "${snapshot.data["data"]["avatar"]}")),
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
                            child: Text(
                                '${snapshot.data["data"]["first_name"]}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
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
                                  padding:
                                      const EdgeInsets.only(left: 40, top: 40)),
                              FaIcon(
                                FontAwesomeIcons.star,
                                color: Colors.yellow,
                                size: 28,
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 40)),
                              FaIcon(
                                FontAwesomeIcons.star,
                                color: Colors.yellow,
                                size: 28,
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 40)),
                              FaIcon(
                                FontAwesomeIcons.star,
                                color: Colors.yellow,
                                size: 28,
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 40)),
                              FaIcon(
                                FontAwesomeIcons.star,
                                color: Colors.yellow,
                                size: 28,
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 40)),
                              FaIcon(
                                FontAwesomeIcons.star,
                                color: Colors.yellow,
                                size: 28,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 40, top: 10, right: 40),
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
                                  padding:
                                      const EdgeInsets.only(left: 40, top: 10),
                                  child: Text(" ",
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
            );
          },
        ));
  }

// Hwewjkkwe
  Future getSingleProduct() async {
    var response = await dio.get(
        "https://reqres.in/api/users/${widget.product["id"]}",
        options: Options(responseType: ResponseType.json));
    print(response.data);
    var singleData = {
      "support": response.data["support"],
      "data": response.data["data"]
    };

    return singleData;
  }
}

// 1.Looking for object in one response
// 2. Create an oject to hold the data & support response
// 3. Wrap the container ina fulture builder
// 4. snapShot.data.
//flutter means create an object
