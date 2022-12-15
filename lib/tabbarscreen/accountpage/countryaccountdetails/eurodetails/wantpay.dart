import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';
import 'package:money_link/tabbarscreen/accountpage/countryaccountdetails/eurodetails/paycredit.dart';
import 'package:money_link/tabbarscreen/accountpage/countryaccountdetails/eurodetails/paydebit.dart';
import 'package:money_link/tabbarscreen/accountpage/countryaccountdetails/eurodetails/sendingfromaccount.dart';
import 'package:money_link/tabbarscreen/accountpage/countryaccountdetails/eurodetails/usingpayid.dart';

import 'banktransfer.dart';

class want_pay extends StatefulWidget {
  const want_pay({Key? key}) : super(key: key);

  @override
  _want_payState createState() => _want_payState();
}

class _want_payState extends State<want_pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.lightBlue,
              ),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            floating: false,
            pinned: true,
            expandedHeight: 110,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.none,
              title: Text(
                "How do you want to pay?",
                style: TextStyle(
                  color: Colors_Widget.themeColor,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Text(
                        "Chosen payment method",
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
                    ListTile(
                      visualDensity: VisualDensity(
                        vertical: 2,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => using_payid()));
                      },
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.home_outlined,
                            color: Colors_Widget.themeColor,
                          )),
                      title: Text(
                        "PayID",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors_Widget.themeColor,
                        ),
                      ),
                      subtitle: Text(
                        "0.16 AUD fee, so you pay 26.66 AUD. Should arrive in seconds",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Text(
                        "Other payment methods",
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
                      visualDensity: VisualDensity(
                        vertical: 2,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bank_transfer()));
                      },
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.home_outlined,
                            color: Colors_Widget.themeColor,
                          )),
                      title: Text(
                        "Manual Bank Transfer",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors_Widget.themeColor,
                        ),
                      ),
                      subtitle: Text(
                        "0.16 AUD fee, so you pay 26.66 AUD. Should arrive by Febuary 21st",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(
                        vertical: 2,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sendfrom_account()));
                      },
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.home_outlined,
                            color: Colors_Widget.themeColor,
                          )),
                      title: Text(
                        "PoLi",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors_Widget.themeColor,
                        ),
                      ),
                      subtitle: Text(
                        "1.3 AUD fee, so you pay 27.84 AUD. Should arrive in seconds",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(
                        vertical: 2,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => pay_debit()));
                      },
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.credit_card_outlined,
                            color: Colors_Widget.themeColor,
                          )),
                      title: Text(
                        "Debit Card",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors_Widget.themeColor,
                        ),
                      ),
                      subtitle: Text(
                        "0.26 AUD fee, so you pay 26.76 AUD. Should arrive in seconds",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(
                        vertical: 2,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => pay_credit()));
                      },
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.credit_card_outlined,
                            color: Colors_Widget.themeColor,
                          )),
                      title: Text(
                        "Credit Card",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors_Widget.themeColor,
                        ),
                      ),
                      subtitle: Text(
                        "0.42 AUD fee, so you pay 26.92 AUD. Should arrive in seconds",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ])),
        ],
      ),
    );
  }
}
