import 'package:flutter/material.dart';
import 'package:ui_1/manageStore.dart';

class AdditionalInformation extends StatelessWidget {
  const AdditionalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Additional Information",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.blue[800],
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ManageStore()));
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        children: [
          listTile(
              title: "Share Dukaan App",
              leading: Icons.share,
              trailing: Icons.arrow_forward_ios),
          listTile(
              title: "Change Language",
              leading: Icons.textsms_outlined,
              trailing: Icons.arrow_forward_ios),
          listTile(
            title: "Whatsapp Chat Support",
            leading: Icons.chat_rounded,
            flag: 1,
          ),
          listTile(
            title: "Privacy Policy",
            leading: Icons.lock_outline_rounded,
            flag: 2,
          ),
          listTile(
            title: "Rate us",
            leading: Icons.star_border,
            flag: 2,
          ),
          listTile(
            title: "Sign Out",
            leading: Icons.logout,
            flag: 2,
          ),
          Expanded(child: SizedBox()),
          Text(
            "Version",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[500],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "2.4.2",
            style: TextStyle(fontSize: 15, color: Colors.grey[700]),
          ),
          SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}

Widget listTile({
  required String title,
  required IconData leading,
  IconData? trailing,
  int flag = 0,
}) {
  return ListTile(
    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
    title: Text(
      title,
      style: TextStyle(
        fontSize: 15,
      ),
    ),
    leading: icon(iconData: leading),
    trailing: flag == 0
        ? icon(iconData: trailing!)
        : flag == 1
            ? Switch(
                value: true,
                onChanged: null,
                inactiveThumbColor: Colors.blue[900],
                trackColor: MaterialStateProperty.all(Colors.blue[100]),
              )
            : null,
  );
}

Widget icon({required IconData iconData}) {
  return Icon(iconData);
}
