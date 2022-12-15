import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

import 'eurodetails/euroaccountdetails.dart';

class country_acountdetails extends StatefulWidget {
  const country_acountdetails({Key? key}) : super(key: key);

  @override
  _country_acountdetailsState createState() => _country_acountdetailsState();
}

class _country_acountdetailsState extends State<country_acountdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Account details",
                style: TextStyle(
                  color: Colors_Widget.themeColor,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text(
                      "What account details would you like to activate first?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => euroaccount_datails()));
                    },
                    leading: ClipRRect(child: CircleAvatar()),
                    title: Text(
                      "Euro",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors_Widget.themeColor,
                      ),
                    ),
                    subtitle: Text(
                      "IBAN, SWIFT/BIC",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
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
          )
        ],
      ),
    );
  }
}
