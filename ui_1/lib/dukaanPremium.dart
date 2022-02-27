import 'package:flutter/material.dart';

import 'package:ui_1/order.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DukaanPremium extends StatefulWidget {
  DukaanPremium({Key? key}) : super(key: key);

  @override
  State<DukaanPremium> createState() => _DukaanPremiumState();
}

class _DukaanPremiumState extends State<DukaanPremium> {
  bool isExpanded = false;
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'id1E0lqnUtY',
    flags: YoutubePlayerFlags(
      hideThumbnail: false,
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          color: Colors.blue[800],
                          width: double.infinity,
                          height: 130,
                          child: AppBar(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            title: Text("Dukaan Premium"),
                            centerTitle: true,
                            actions: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Order()));
                                  },
                                  icon: Icon(Icons.arrow_forward))
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 50, left: 10, right: 10),
                          child: SizedBox(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:
                                              AssetImage("assets/dukaan.png"),
                                          radius: 18,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "  dukaan",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 22,
                                                ),
                                                Text(
                                                  "PREMIUM",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Get Dukaan Premium for just\n₹4,999/year",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "All the advanced featres for scaling your\nbusiness",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[600]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    paddingText(title: "Features"),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        listTile(
                          iconData: Icons.public_outlined,
                          title: "Custom domain name",
                          subtitle:
                              "Get your oum custom domain and build your brand the internet.",
                        ),
                        listTile(
                          iconData: Icons.verified_outlined,
                          title: "Verified seller badge",
                          subtitle:
                              "Get green verified badge under your store name and build trust.",
                        ),
                        listTile(
                          iconData: Icons.computer_outlined,
                          title: "Dukaan for PC",
                          subtitle:
                              "Access all the executive premium features on Dukaan for PC.",
                        ),
                        listTile(
                          iconData: Icons.headset_mic_sharp,
                          title: "Priority Support",
                          subtitle:
                              "Get your questions resolved with our priority customer support.",
                        ),
                        divider(),
                      ],
                    ),
                    paddingText(title: "What is Dukaan Premium?"),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                      ),
                    ),
                    divider(),
                    paddingText(title: "Frequently asked questions"),
                    // ExpansionPanelList(
                    //   expansionCallback: (int panelIndex, bool isExpanded) {
                    //     setState(() {
                    //       _isExpanded = !isExpanded;
                    //     });
                    //   },
                    //   children: [
                    //     ExpansionPanel(
                    //       headerBuilder: (context, isExpanded) {
                    //         return Text("ASDFDFF");
                    //       },
                    //       body: Text("dsaffffdafafafafa"),
                    //       isExpanded: _isExpanded,
                    //     ),
                    //   ],
                    // ),
                    expansionTile(
                        title:
                            "What types of businesses can use Dukaan Premium?"),
                    expansionTile(title: "What is your refund policy?"),
                    expansionTile(
                        title:
                            "Will there be an automatic charge after the paid trial?"),
                    expansionTile(title: "What payment methods do you offer?"),
                    expansionTile(
                        title: "What happens when my free trial ends?"),
                    expansionTile(
                        title: "What are the terms for the custom domain?"),
                    divider(),
                    paddingText(title: "Need help? Get in touch"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        containerHelp(
                            title: "Live Chat",
                            iconData: Icons.messenger_outline),
                        containerHelp(
                            title: "Phone Call", iconData: Icons.phone),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    divider(),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Select Domain",
                    style: TextStyle(
                      color: Colors.blue.shade800,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue.shade800,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 40,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Get Premium"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget expansionTile({
    required String title,
  }) {
    return ExpansionTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 13,
        ),
      ),
      childrenPadding: EdgeInsets.all(15),
      children: [
        Text(
          "Dukaan caters to awide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 13,
          ),
        )
      ],
    );
  }
}

Widget listTile({
  required IconData iconData,
  required String title,
  required String subtitle,
}) {
  return ListTile(
    horizontalTitleGap: 7,
    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    ),
    subtitle: Text(
      subtitle,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13,
      ),
    ),
    leading: Icon(
      iconData,
      color: Colors.blue,
      size: 35,
    ),
  );
}

Widget containerHelp({required String title, required IconData iconData}) {
  return Container(
    padding: EdgeInsets.all(10),
    width: 125,
    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
    child: Column(
      children: [
        Icon(
          iconData,
        ),
        Text(
          title,
        ),
      ],
    ),
  );
}

Widget paddingText({required String title}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, top: 10),
    child: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget divider() {
  return Divider(
    thickness: 5,
  );
}
