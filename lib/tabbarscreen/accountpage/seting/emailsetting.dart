import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

class email_setting extends StatefulWidget {
  const email_setting({Key? key}) : super(key: key);

  @override
  _email_settingState createState() => _email_settingState();
}

class _email_settingState extends State<email_setting> {
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
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => activateacountdetails()));
            },
            child: Text(
              "Call us",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
      ),
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
            // expandedHeight: MediaQuery.of(context).size.height * 0.10,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Email settings",
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
