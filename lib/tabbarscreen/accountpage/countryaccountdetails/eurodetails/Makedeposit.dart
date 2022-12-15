import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';
import 'package:money_link/tabbarscreen/accountpage/countryaccountdetails/eurodetails/wantpay.dart';

class Make_deposit extends StatefulWidget {
  const Make_deposit({Key? key}) : super(key: key);

  @override
  _Make_depositState createState() => _Make_depositState();
}

class _Make_depositState extends State<Make_deposit> {
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => want_pay()));
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
                Icons.arrow_back,
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
                "Add PKR",
                style: TextStyle(
                  color: Colors_Widget.themeColor,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "To get account details. You'll need to add at least 3250 PKR to your account.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Add"),
                                Text(
                                  "3250",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors_Widget.themeColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: Colors_Widget.themeColor,
                            width: 100,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Paying with",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("data"),
                              Icon(Icons.add),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.black26,
                          ),
                          Text(
                            "You can't yet add PKR directly. Please choose another currency to pay with.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Money Link fee: ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Fixed exchange rate: ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Amount you pay: ",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors_Widget.themeColor,
                            ),
                          ),
                        ],
                      ),
                    )
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
