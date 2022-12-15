import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

class business_charity extends StatefulWidget {
  const business_charity({Key? key}) : super(key: key);

  @override
  _business_charityState createState() => _business_charityState();
}

class _business_charityState extends State<business_charity> {
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
              "Confirm",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
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
                "A business or organization",
                style: TextStyle(
                  color: Colors_Widget.themeColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
