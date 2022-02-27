import 'package:flutter/material.dart';
import 'package:ui_1/catalogue.dart';
import 'package:ui_1/payments.dart';

class ManageStore extends StatefulWidget {
  const ManageStore({Key? key}) : super(key: key);

  @override
  State<ManageStore> createState() => _ManageStoreState();
}

class _ManageStoreState extends State<ManageStore> {
  int currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text("Manage Store"),
        backgroundColor: Colors.blue[800],
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Catalogue()));
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: currentSelectedIndex,
        onTap: (value) {
          setState(() {
            setState(() {
              currentSelectedIndex = value;
            });
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.paid_outlined),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.production_quantity_limits),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_rounded),
            label: "Manage",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Accounts",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  card(
                      title: "Marketing\nDesigns",
                      iconData: Icons.speaker,
                      color: Colors.red),
                  card(
                      title: "Online\nPayments",
                      iconData: Icons.paid_outlined,
                      color: Colors.lightGreen),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  card(
                      title: "Discount\nCoupons",
                      iconData: Icons.price_change_outlined,
                      color: Colors.yellow),
                  card(
                    title: "My\nCustomers",
                    iconData: Icons.people_outline,
                    color: Colors.green,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  card(
                      title: "Store QR\nCode",
                      iconData: Icons.qr_code_2_outlined,
                      color: Colors.grey),
                  card(
                    title: "Order\nForm",
                    iconData: Icons.format_align_center_rounded,
                    color: Colors.pink,
                    newFlag: 1,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget card({
  required String title,
  required IconData iconData,
  required Color color,
  int newFlag = 0,
}) {
  return SizedBox(
    width: 150,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            newFlag == 0
                ? Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: color,
                    ),
                    height: 25,
                    width: 25,
                    child: Icon(
                      iconData,
                      size: 25,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: color,
                        ),
                        height: 25,
                        width: 25,
                        child: Icon(iconData),
                      ),
                      Container(
                        padding: EdgeInsets.all(3),
                        child: Text(
                          "NEW",
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        ),
                        color: Colors.green,
                      ),
                    ],
                  ),
            SizedBox(
              height: 3,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    ),
  );
}
