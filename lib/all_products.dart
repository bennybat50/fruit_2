import 'package:flutter/material.dart';
import 'package:fruit_2/cart_page.dart';

import 'grid_page_.dart';
import 'product_page.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
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
      key: _key,
      backgroundColor: Colors.lightGreen[100],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "Gallery"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: "Actvity"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: Colors.green),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartPage()),
                        );
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("assets/img/avatar.png"),
                      ),
                    ),
                    const Text(
                      "Good Morning !",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const Text(
                      "Mr James",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )
                  ],
                )),
            ClipRRect(
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(70)),
              child: Container(
                height: 900,
                color: Colors.green[400],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: ListView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    children: [
                      const ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Settings",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Go here",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Logout",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Leave here",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      _key.currentState!.openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu_rounded,
                    )),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CartPage()),
                    );
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/img/avatar.png"),
                  ),
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "\$${OBJ[index].price}",
                                style: const TextStyle(color: Colors.green),
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
