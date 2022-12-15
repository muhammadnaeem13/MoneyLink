import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

class receive_emailphone extends StatefulWidget {
  const receive_emailphone({Key? key}) : super(key: key);

  @override
  _receive_emailphoneState createState() => _receive_emailphoneState();
}

class _receive_emailphoneState extends State<receive_emailphone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.lightBlue,
                )),
            pinned: true,
            floating: false,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Receiving by email or phone",
                style: TextStyle(
                  color: Colors_Widget.themeColor,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "Receive from people on Wise to your Wise account without using account details.",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "People on Wise can find you by",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Help",
                        style: TextStyle(fontSize: 15, color: Colors.lightBlue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.email_outlined,
                    color: Colors_Widget.themeColor,
                  )),
              title: Text(
                "Email address",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text(
                "khan@gmail.com",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.phone_android_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Phone number",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text(
                "03234132140",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
