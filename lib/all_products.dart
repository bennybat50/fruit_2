import 'package:flutter/material.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
        child: ListView(
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
                    const Icon(Icons.search)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
