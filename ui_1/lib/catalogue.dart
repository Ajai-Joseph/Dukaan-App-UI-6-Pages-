import 'package:flutter/material.dart';
import 'package:ui_1/images.dart';
import 'package:ui_1/order.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Catalogue",
            ),
            backgroundColor: Colors.blue[800],
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                ),
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: "Products",
                ),
                Tab(
                  text: "Categories",
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(6),
            child: TabBarView(
              children: [
                ListView(
                  children: [
                    listTile(
                      leading: cloth3,
                      title: "Men | Navy Blue",
                      piece: "1 piece",
                      price: "₹799",
                    ),
                    listTile(
                      leading: watch1,
                      title: "Men | Watches",
                      piece: "1 piece",
                      price: "₹1499",
                    ),
                    listTile(
                      leading: shoe1,
                      title: "Men | Shoes",
                      piece: "1 piece",
                      price: "₹1999",
                    ),
                    listTile(
                      leading: mobile1,
                      title: "Smartphone",
                      piece: "1 piece",
                      price: "₹10,999",
                    ),
                    listTile(
                      leading: cloth2,
                      title: "Men | Shirts",
                      piece: "1 piece",
                      price: "₹1499",
                    ),
                    listTile(
                      leading: watch2,
                      title: "Men | Watches",
                      piece: "1 piece",
                      price: "₹1499",
                    ),
                    listTile(
                      leading: cloth1,
                      title: "Men | Shirts",
                      piece: "1 piece",
                      price: "₹1499",
                    ),
                    listTile(
                      leading: shoe3,
                      title: "Men | Shoes",
                      piece: "1 piece",
                      price: "₹1999",
                    ),
                    listTile(
                      leading: mobile2,
                      title: "Smartphone",
                      piece: "1 piece",
                      price: "₹10,999",
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "Categories",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget listTile({
  required String leading,
  required String title,
  required String piece,
  required String price,
}) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(leading),
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  piece,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  "In stock",
                  style: TextStyle(
                    color: Colors.green.shade500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            trailing: Column(
              children: [
                Icon(
                  Icons.more_vert_outlined,
                ),
                SizedBox(
                  width: 32,
                  height: 32,
                  child: Switch(
                    value: true,
                    onChanged: null,
                    inactiveThumbColor: Colors.blue[900],
                    trackColor: MaterialStateProperty.all(Colors.blue[100]),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.share_outlined,
                  size: 20,
                ),
                Text(
                  "  Share Product",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
