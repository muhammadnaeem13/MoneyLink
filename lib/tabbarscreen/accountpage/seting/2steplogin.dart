import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

class step2_login extends StatefulWidget {
  const step2_login({Key? key}) : super(key: key);

  @override
  _step2_loginState createState() => _step2_loginState();
}

class _step2_loginState extends State<step2_login> {
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
                "2-step login",
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
