import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

class account_limits extends StatefulWidget {
  const account_limits({Key? key}) : super(key: key);

  @override
  _account_limitsState createState() => _account_limitsState();
}

class _account_limitsState extends State<account_limits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.lightBlue,
              ),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            backgroundColor: Colors.white,
            pinned: true,
            floating: false,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Account limits",
                style: TextStyle(
                  color: Colors_Widget.themeColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              child: Center(
                child: Text("Data"),
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
