import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_1/additionalInformation.dart';
import 'package:ui_1/catalogue.dart';
import 'package:ui_1/main.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Order #1688068",
          ),
          backgroundColor: Colors.blue[800],
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AdditionalInformation()));
                },
                icon: Icon(Icons.arrow_forward))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      listtile(
                        title: "May 31, 05:42 PM",
                        fontWeight: FontWeight.normal,
                        trailingFlag: 1,
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.blue[800],
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Delivered"),
                          ],
                        ),
                      ),
                      divider(),
                      listtile(
                        title: "1 ITEM",
                        fontWeight: FontWeight.w300,
                        trailingFlag: 1,
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.receipt_rounded,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "RECEIPT",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                      listtile(
                        title: "Explore|Men|Navy Blue",
                        leadingFlag: 1,
                        leading: Image.asset(
                          "assets/cloth3.jfif",
                        ),
                        fontWeight: FontWeight.normal,
                        subtitleFlag: 1,
                        sutititle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1 piece",
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              "Size: XL",
                            ),
                            listtile(
                              leading: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  border: Border.all(
                                    color: Colors.blue.shade900,
                                  ),
                                ),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                  ),
                                ),
                              ),
                              title: "x ₹799",
                              fontWeight: FontWeight.normal,
                              leadingFlag: 1,
                              trailingFlag: 1,
                              trailing: Text(
                                "₹799",
                              ),
                            ),
                          ],
                        ),
                      ),
                      divider(),
                      listtile(
                        title: "Item Total",
                        fontWeight: FontWeight.normal,
                        trailingFlag: 1,
                        trailing: Text(
                          "₹799",
                        ),
                      ),
                      listtile(
                        title: "Delivery",
                        fontWeight: FontWeight.normal,
                        trailingFlag: 1,
                        trailing: Text(
                          "FREE",
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      listtile(
                        title: "Grand Total",
                        fontWeight: FontWeight.bold,
                        trailingFlag: 1,
                        trailing: Text(
                          "₹799",
                        ),
                      ),
                      divider(),
                      listtile(
                        title: "CUSTOMER DETAILS",
                        fontWeight: FontWeight.w400,
                        trailingFlag: 1,
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.share_outlined,
                              color: Colors.blue.shade700,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "SHARE",
                              style: TextStyle(
                                color: Colors.blue.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      listtile(
                        title: "Ajai",
                        fontWeight: FontWeight.bold,
                        trailingFlag: 1,
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.call,
                              color: Colors.blue.shade700,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.messenger_outline_sharp,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        subtitleFlag: 1,
                        sutititle: Text(
                          "+91 9497308477",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        "Address",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Puthanpurakkal (H),\nArattuvazhy,Narakkal P.O",
                        style: TextStyle(fontSize: 13),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "City",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Ernakulam",
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pincode",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "682505",
                              ),
                            ],
                          ),
                        ],
                      ),
                      listtile(
                        title: "Payment",
                        fontWeight: FontWeight.bold,
                        subtitleFlag: 1,
                        sutititle: Text(
                          "Online",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        trailingFlag: 1,
                        trailing: Container(
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 7,
                          ),
                          child: Text(
                            "PAID",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      divider(),
                      Text(
                        "ADDITIONAL INFORMATION",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "State",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Kerala",
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "ajaijoseph363@gmail.com",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: Colors.blue.shade800),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 80),
                  child: Text(
                    "Share receipt",
                    style: TextStyle(
                      color: Colors.blue.shade800,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget listtile({
  required String title,
  required FontWeight fontWeight,
  Widget? leading,
  Widget? trailing,
  Widget? sutititle,
  int subtitleFlag = 0,
  int trailingFlag = 0,
  int leadingFlag = 0,
}) {
  return ListTile(
    horizontalTitleGap: 0,
    dense: true,
    contentPadding: EdgeInsets.all(0),
    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
    title: Text(
      title,
      style: TextStyle(fontSize: 13, fontWeight: fontWeight),
    ),
    leading: leadingFlag == 0 ? null : leading,
    trailing: trailingFlag == 0 ? null : trailing,
    subtitle: subtitleFlag == 0 ? null : sutititle,
  );
}

Widget divider() {
  return Divider(
    thickness: 2,
  );
}
