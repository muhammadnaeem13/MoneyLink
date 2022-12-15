import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:money_link/Widgets/colors.dart';
import 'package:money_link/tabbarscreen/accountpage/accountlimits/acountlimits.dart';
import 'package:money_link/tabbarscreen/accountpage/directdebit/direcdebit.dart';
import 'package:money_link/tabbarscreen/accountpage/howcanwehelp/howcanhelp.dart';
import 'package:money_link/tabbarscreen/accountpage/recievedbyemailorphone/receiveemailphone.dart';
import 'package:money_link/tabbarscreen/accountpage/scheduletransfer/scheduletrans.dart';
import 'package:money_link/tabbarscreen/accountpage/seting/setting.dart';
import 'package:money_link/tabbarscreen/accountpage/statements/stateandreport.dart';
import 'package:money_link/tabbarscreen/homebarpage/earndollor.dart';

import 'fulldetailsaccount/acountdetails.dart';

class account_bar extends StatefulWidget {
  const account_bar({Key? key}) : super(key: key);

  @override
  _account_barState createState() => _account_barState();
}

class _account_barState extends State<account_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => how_canhelp()));
                  },
                  icon: Icon(
                    Icons.contact_support_outlined,
                    color: Colors.lightBlue,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => settting()));
                  },
                  icon: Icon(
                    Icons.settings,
                    color: Colors.lightBlue,
                  )),
            ],
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.lightBlue,
                )),
            pinned: true,
            floating: false,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(100),
                  child: CircleAvatar(
                    child: Image.asset(
                      "images/nn.jpeg",
                    ),
                  ),
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 10,
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Khyber Coded Flutter",
                      style: TextStyle(
                        color: Colors_Widget.themeColor,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        showMaterialModalBottomSheet(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          context: context,
                          builder: (context) => Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                              // height: MediaQuery.of(context).size.height * 0.35,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: ClipRRect(
                                      child: CircleAvatar(
                                        child: Image.asset(
                                          "images/nn.jpeg",
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(75),
                                    ),
                                    title: Text(
                                      "Khyber Coded",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors_Widget.themeColor,
                                      ),
                                    ),
                                    subtitle: InkWell(
                                      child: Text(
                                        "Edit your details",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.lightBlue),
                                      ),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 30,
                                  // ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Other accounts",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black87),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                    child: Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                  ListTile(
                                      onTap: () {},
                                      leading: CircleAvatar(
                                          backgroundColor: Colors.grey[200],
                                          child: Icon(
                                            Icons.business_center_outlined,
                                            color: Colors_Widget.themeColor,
                                          )),
                                      title: Text(
                                        "Get a business account",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors_Widget.themeColor,
                                        ),
                                      ),
                                      subtitle: Text(
                                          "Open an account with features built for doing business abroad")),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                    child: Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        Text(
                                          "Membership number: P34944150",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black87),
                                        ),
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                    ),
                                    height: 60,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Personal account",
                            style: TextStyle(
                                fontSize: 16, color: Colors.lightBlue),
                          ),
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            size: 30,
                            color: Colors.lightBlue,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Invite your friends",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Copy link",
                        style: TextStyle(fontSize: 15, color: Colors.lightBlue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => earn_dollor()));
              },
              visualDensity: VisualDensity(vertical: 4),
              leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.home_outlined,
                    color: Colors_Widget.themeColor,
                  )),
              title: Text(
                "Invite and earn 50 GBP",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text(
                "Earn 50 GBP for every 3 friends who transfer over 200 GBP.",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "Account services",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Account_detail()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.account_balance_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Account details",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => receive_emailphone()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.email_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Receiving by emails or phone",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => schedule_transfer()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.transfer_within_a_station_sharp,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Scheduled transfer",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => direct_debit()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.directions_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Direct Debits",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => choosebalance()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.contact_page_sharp,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Statements",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => account_limits()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Account limits",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75)),
                        child: Image.asset("images/nn.jpeg")),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Sorry, the Wise debit card isn't available in Pakistan yet. We'll let you know when you can get one.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ]))
        ],
      ),
    );
  }
}
