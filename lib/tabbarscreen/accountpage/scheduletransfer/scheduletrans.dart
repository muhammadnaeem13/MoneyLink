import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

class schedule_transfer extends StatefulWidget {
  const schedule_transfer({Key? key}) : super(key: key);

  @override
  _schedule_transferState createState() => _schedule_transferState();
}

class _schedule_transferState extends State<schedule_transfer> {
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
                  Icons.clear,
                  color: Colors.lightBlue,
                )),
            backgroundColor: Colors.white,
            pinned: true,
            floating: false,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Scheduled transfer",
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
