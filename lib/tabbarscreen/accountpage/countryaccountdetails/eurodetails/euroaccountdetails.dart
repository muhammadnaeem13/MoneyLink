import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:money_link/Widgets/colors.dart';

import 'Makedeposit.dart';

class euroaccount_datails extends StatefulWidget {
  const euroaccount_datails({Key? key}) : super(key: key);

  @override
  _euroaccount_datailsState createState() => _euroaccount_datailsState();
}

class _euroaccount_datailsState extends State<euroaccount_datails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: MaterialButton(
            color: Colors.lightBlue,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Make_deposit()));
            },
            child: Text(
              "Make a deposit",
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
            expandedHeight: 110,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.none,
              title: Text(
                "Get your EUR account details",
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You'll get the following EUR account details:",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "IBAN, SWIFT/BIC.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors_Widget.themeColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text(
                      "Steps to complete",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
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
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.payments_outlined,
                      color: Colors_Widget.themeColor,
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
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 24, 20, 10),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Deposit money to your account",
                                              style: TextStyle(
                                                  color:
                                                      Colors_Widget.themeColor,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "You'll need to deposit at least 3,250 PKR into your Wise account before you can get account details. You'll be able to use this money later.",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey[600]),
                                            ),
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
                    title: Text(
                      "Deposit at least 3,250 PKR",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors_Widget.themeColor,
                      ),
                    ),
                    subtitle: Text(
                      "You only need to do this for your first set of details.You can use this money later.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.perm_identity,
                      color: Colors_Widget.themeColor,
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
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 24, 20, 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Verify your identity",
                                              style: TextStyle(
                                                  color:
                                                      Colors_Widget.themeColor,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "You'll need to show us your ID, and sometimes a copy of a bank statement or utility bill. it's one of the ways we keep your money safe. Usually, we can verify you in a few minutes. But sometimes it can take up to 3 working days",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey[600]),
                                            ),
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
                    title: Text(
                      "Verify your identity",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors_Widget.themeColor,
                      ),
                    ),
                    subtitle: Text(
                      "We'll need to check your ID. It's one of the ways we keep your money safe.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
