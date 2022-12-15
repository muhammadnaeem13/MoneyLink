import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

class card_bar extends StatefulWidget {
  const card_bar({Key? key}) : super(key: key);

  @override
  _card_barState createState() => _card_barState();
}

class _card_barState extends State<card_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            floating: false,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Cards",
                style: TextStyle(
                  color: Colors_Widget.themeColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Data"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
