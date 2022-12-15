import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:money_link/Widgets/colors.dart';
import '../countryaccountdetails/countryDETAILS.dart';

class Account_detail extends StatefulWidget {
  const Account_detail({Key? key}) : super(key: key);

  @override
  _Account_detailState createState() => _Account_detailState();
}

class _Account_detailState extends State<Account_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: MaterialButton(
            color: Colors.lightBlue,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => country_acountdetails()));
            },
            child: Text(
              "Continue",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
      ),
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
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.none,
              title: Text(
                "Get account details from Wise",
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
                child: Column(children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          "images/nn.jpeg",
                          height: 200,
                          width: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.golf_course_sharp,
                            color: Colors_Widget.themeColor,
                          ),
                          title: Text(
                            "Get paid in 9 currencies",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors_Widget.themeColor,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              showMaterialModalBottomSheet(
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  context: context,
                                  builder: (context) => Expanded(
                                        child: SingleChildScrollView(
                                          child: Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 24, 20, 10),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      "Which currencies can you get account details in?",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF1F1F52),
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      "With Wise, you can get account details to receive money in these currencies:",
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                              Colors.grey[600]),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "NZD - New Zealand dollar\nEUR - Euro\nGBP - British pound\nAUD - Australlian dollar\nCAD - Canadian dollar\nTRY - Turkish lira\nHUF - Hungarian forint\nUSD - United States dollar\nSGD - Singapore dollar\nAFG - Afghanistan afghani",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .grey[600]),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                      child: Column(
                                                    children: [
                                                      Text(
                                                        "And we're adding more all the time. So make sure to check back if you don't see a currency you need.",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors
                                                                .grey[600]),
                                                      ),
                                                    ],
                                                  ))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ));
                            },
                            icon: Icon(
                              Icons.run_circle_outlined,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.save_alt,
                            color: Colors_Widget.themeColor,
                          ),
                          title: Text(
                            "Receive transfer, salary or pansion",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors_Widget.themeColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.payments_outlined,
                            color: Colors_Widget.themeColor,
                          ),
                          title: Text(
                            "Pay bills via Direct Debit",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors_Widget.themeColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors_Widget.themeColor,
                          ),
                          title: Text(
                            "Connect with services like Stripe",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors_Widget.themeColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
