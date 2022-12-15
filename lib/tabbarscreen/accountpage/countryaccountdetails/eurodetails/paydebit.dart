import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

class pay_debit extends StatefulWidget {
  const pay_debit({Key? key}) : super(key: key);

  @override
  _pay_debitState createState() => _pay_debitState();
}

class _pay_debitState extends State<pay_debit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: MaterialButton(
            onPressed: () {},
            shape: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlue, width: 1)),
            child: Text(
              "Need some help?",
              style: TextStyle(color: Colors.lightBlue, fontSize: 17),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
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
                "Pay with your card",
                style: TextStyle(
                  color: Colors_Widget.themeColor,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Data"),
                    )
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
