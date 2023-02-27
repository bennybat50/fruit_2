import 'package:flutter/material.dart';

import 'grid_page_.dart';
import 'product_page.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  var OBJ = [
    ListObject(image: 'assets/img/apple.png', title: 'Goodluck', price: '20'),
    ListObject(
        image: 'assets/img/banna.jpeg', title: 'Goodluck me', price: '20'),
    ListObject(
        image: 'assets/img/lemon.png', title: 'Goodluck me 3', price: '20'),
    ListObject(
        image: 'assets/img/mango.png', title: 'Goodluck me 4', price: '20'),
    ListObject(
        image: 'assets/img/strawberry.png',
        title: 'Goodluck me 4',
        price: '20'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu_rounded,
                    )),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/img/avatar.png"),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Wrap(
                direction: Axis.vertical,
                children: const [
                  Text(
                    "Choose The",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Fruits you love",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Container(
                width: double.infinity,
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    // color: Colors.grey[200],
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autofocus: false,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search for fruits"),
                      ),
                    ),
                    const Icon(Icons.search),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0),
                itemCount: OBJ.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductPage(
                                  product: OBJ[index],
                                )),
                      );
                    },
                    child: Card(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 200,
                          height: 200,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image.asset(
                                OBJ[index].image,
                                height: 120,
                                alignment: Alignment.center,
                                fit: BoxFit.contain,
                              ),
                              Text(
                                OBJ[index].title,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "\$${OBJ[index].price}",
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
            // ignore: prefer_const_constructors
          ],
        ),
      ),
    );
  }
}
