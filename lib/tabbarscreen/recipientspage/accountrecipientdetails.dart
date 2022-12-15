import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';
import 'package:money_link/tabbarscreen/recipientspage/myself.dart';
import 'package:money_link/tabbarscreen/recipientspage/someoneelse.dart';

import 'businesscharity.dart';

class accountRecipient_details extends StatefulWidget {
  const accountRecipient_details({Key? key}) : super(key: key);

  @override
  _accountRecipient_detailsState createState() =>
      _accountRecipient_detailsState();
}

class _accountRecipient_detailsState extends State<accountRecipient_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.lightBlue,
                )),
            backgroundColor: Colors.white,
            pinned: true,
            floating: false,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Who's your recipient?",
                style: TextStyle(
                  color: Colors_Widget.themeColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.home_outlined,
                    color: Colors_Widget.themeColor,
                  ),
                ),
                title: Text(
                  "Myself",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors_Widget.themeColor,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => my_self()));
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: Colors_Widget.themeColor,
                  ),
                ),
                title: Text(
                  "Someone else",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors_Widget.themeColor,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => someone_else()));
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.business_center_outlined,
                    color: Colors_Widget.themeColor,
                  ),
                ),
                title: Text(
                  "A bussiness / charity",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors_Widget.themeColor,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => business_charity()));
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Divider(
                  thickness: 1,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
