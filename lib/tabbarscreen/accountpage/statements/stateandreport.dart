import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

class choosebalance extends StatefulWidget {
  const choosebalance({Key? key}) : super(key: key);

  @override
  _choosebalanceState createState() => _choosebalanceState();
}

class _choosebalanceState extends State<choosebalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              icon: Icon(
                Icons.clear,
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
                "Choose a balance",
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
