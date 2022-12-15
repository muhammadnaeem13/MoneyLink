import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';
import 'package:money_link/tabbarscreen/homebarpage/notification.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'earndollor.dart';

class home_bar extends StatefulWidget {
  const home_bar({Key? key}) : super(key: key);

  @override
  _home_barState createState() => _home_barState();
}

class _home_barState extends State<home_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors_Widget.themeColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors_Widget.themeColor,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => notify()));
              },
              icon: Icon(Icons.add_alert_outlined, color: Colors.blue)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: MaterialButton(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(75),
                  borderSide: BorderSide(
                    color: Colors_Widget.themeColor,
                  )),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => earn_dollor()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.wallet_giftcard_sharp,
                    color: Colors.blue,
                  ),
                  Text(
                    "Earn\$50",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: SlidingUpPanel(
        maxHeight: MediaQuery.of(context).size.height,
        // minHeight: MediaQuery.of(context).size.height * .50,
        panel: Scrollbar(
            child: Container(
          child: Column(
            children: [
              // Material(
              //   child: Text("snjacjsna"),
              // )
            ],
          ),
        )),
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        width: 130,
                        height: 130,
                        // MediaQuery.of(context).size.height * 0.30 - 90,
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add,
                                size: 50,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Open",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
