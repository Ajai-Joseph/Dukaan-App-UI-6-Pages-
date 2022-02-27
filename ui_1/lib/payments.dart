import 'package:flutter/material.dart';
import 'package:ui_1/dukaanPremium.dart';
import 'package:ui_1/images.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Center(
            child: Text("Payments"),
          ),
          backgroundColor: Colors.blue[800],
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DukaanPremium()));
              },
              icon: Icon(Icons.arrow_forward),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Transaction Limit",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "A free limit up to which you will receive the online payments directy in your bank",
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        LinearProgressIndicator(
                          backgroundColor: Colors.grey.shade400,
                          value: 0.2,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "36,668 left out of ₹50,000",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Increase limit",
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue[800]),
                        ),
                      ],
                    ),
                  ),
                ),
                listTile(
                    title: "Default Method",
                    subtitle: "Online Payments",
                    iconData: Icons.arrow_forward_ios),
                listTile(
                  title: "Payment Profile",
                  subtitle: "Bank Account",
                  iconData: Icons.arrow_forward_ios,
                ),
                Divider(
                  thickness: 2,
                ),
                listTile(
                  title: "Payments Overview",
                  subtitle: "Life Time",
                  iconData: Icons.keyboard_arrow_down_outlined,
                  boldflag: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    container(
                      title: "AMOUNT ON HOLD",
                      amount: "0",
                      color: Colors.deepOrange,
                    ),
                    container(
                      title: "AMOUNT RECEIVED",
                      amount: "13,332",
                      color: Colors.green,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Transactions",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    elevatedButton(
                      title: "On hold",
                      color: Colors.grey,
                    ),
                    elevatedButton(
                      title: "Payouts (15)",
                      color: Colors.blue,
                    ),
                    elevatedButton(
                      title: "Refunds",
                      color: Colors.grey,
                    ),
                  ],
                ),
                listTileOrder(
                  image: cloth1,
                  title: "Order #1688068",
                  subtitle: "Jul 12, 02:06 PM",
                  price: "799",
                ),
                listTileOrder(
                  image: shoe1,
                  title: "Order #1688068",
                  subtitle: "Jul 12, 02:06 PM",
                  price: "3000",
                ),
                listTileOrder(
                  image: mobile1,
                  title: "Order #1688068",
                  subtitle: "Jul 12, 02:06 PM",
                  price: "7999",
                ),
                listTileOrder(
                  image: cloth2,
                  title: "Order #1688068",
                  subtitle: "Jul 12, 02:06 PM",
                  price: "399",
                ),
                listTileOrder(
                  image: watch1,
                  title: "Order #1688068",
                  subtitle: "Jul 12, 02:06 PM",
                  price: "1399",
                ),
                listTileOrder(
                  image: shoe2,
                  title: "Order #1688068",
                  subtitle: "Jul 12, 02:06 PM",
                  price: "899",
                ),
                listTileOrder(
                  image: mobile2,
                  title: "Order #1688068",
                  subtitle: "Jul 12, 02:06 PM",
                  price: "11,799",
                ),
                listTileOrder(
                  image: watch2,
                  title: "Order #1688068",
                  subtitle: "Jul 12, 02:06 PM",
                  price: "799",
                ),
                listTileOrder(
                  image: shoe3,
                  title: "Order #1688068",
                  subtitle: "Jul 12, 02:06 PM",
                  price: "799",
                ),
                listTileOrder(
                  image: cloth3,
                  title: "Order #1688068",
                  subtitle: "Jul 12, 02:06 PM",
                  price: "799",
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
  required String title,
  required String subtitle,
  required IconData iconData,
  int boldflag = 0,
}) {
  return ListTile(
    dense: true,
    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
    title: boldflag == 0
        ? Text(title)
        : Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(subtitle),
        Icon(iconData),
      ],
    ),
  );
}

Widget container(
    {required String title, required String amount, required Color color}) {
  return Container(
    padding: EdgeInsets.all(10),
    width: 130,
    height: 70,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 10, color: Colors.white),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "₹${amount}",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    ),
  );
}

Widget elevatedButton({
  required String title,
  required Color color,
}) {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      title,
      style: TextStyle(fontSize: 13),
    ),
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      primary: color,
    ),
  );
}

Widget listTileOrder({
  required String image,
  required String title,
  required String subtitle,
  required String price,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 13),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12),
        ),
        leading: SizedBox(width: 50, height: 50, child: Image.asset(image)),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "₹${price}",
              style: TextStyle(color: Colors.blue[800]),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Successful"),
              ],
            ),
          ],
        ),
      ),
      Column(
        children: [
          Text(
            "₹${price} deposited to: 58860200000138",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      Divider(
        thickness: 2,
      ),
    ],
  );
}
