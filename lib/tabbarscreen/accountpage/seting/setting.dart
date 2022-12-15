import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';
import 'package:money_link/login/splshlogin.dart';
import 'package:money_link/tabbarscreen/accountpage/seting/2steplogin.dart';
import 'package:money_link/tabbarscreen/accountpage/seting/closeacount.dart';
import 'package:money_link/tabbarscreen/accountpage/seting/connectedservices.dart';
import 'package:money_link/tabbarscreen/accountpage/seting/emailsetting.dart';

import 'changepassword.dart';
import 'notificationsetting.dart';

class settting extends StatefulWidget {
  const settting({Key? key}) : super(key: key);

  @override
  _setttingState createState() => _setttingState();
}

class _setttingState extends State<settting> {
  bool isSwitched = false;
  List<bool> _selections = List.generate(3, (_) => false);
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
                  Icons.clear,
                  color: Colors.lightBlue,
                )),
            pinned: true,
            floating: false,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Settings",
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "Security",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => email_setting()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.email_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              visualDensity: VisualDensity(vertical: 4),
              title: Text(
                "Email settings",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text(
                "khan@gmail.com",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => conected_services()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.wifi_protected_setup_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              visualDensity: VisualDensity(vertical: 4),
              title: Text(
                "Connected services",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text(
                "You've connected your Wise account to Google",
                style: TextStyle(fontSize: 14, color: Colors.black54),
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
                  Icons.fingerprint_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Use fingerprint to log in",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              trailing: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeColor: Colors.lightBlue,
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
                  Icons.access_time,
                  color: Colors_Widget.themeColor,
                ),
              ),
              visualDensity: VisualDensity(vertical: 4),
              title: Text(
                "Auto-lock security",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text(
                "Require fingerprint after 2 minutes of inactivity",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              trailing: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeColor: Colors.lightBlue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => change_password()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.lock_outline,
                  color: Colors_Widget.themeColor,
                ),
              ),
              visualDensity: VisualDensity(vertical: 4),
              title: Text(
                "Change password",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text(
                "12345678",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => step2_login()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.mobile_friendly_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              visualDensity: VisualDensity(vertical: 4),
              title: Text(
                "2-step login",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text(
                "Status: On",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "General",
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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => notifcation_setting()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Notifications",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
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
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => dircdebit()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.star_border_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Rate the app",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
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
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => choosebalance()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.contact_support_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Our agreements",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
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
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => accountlmts()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.menu_book_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Account limits",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "Privacy",
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
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => dircdebit()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.people_outline,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Contact on Wise",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "Dark Mode",
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
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => dircdebit()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.account_circle_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Personal details",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => close_account()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.clear,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Close account",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => splash_login()));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.send_to_mobile,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Sign out",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
            // ToggleButtons(
            //   verticalDirection: VerticalDirection.up,
            //   children: <Widget>[
            //     Icon(Icons.add_comment),
            //     Icon(Icons.airline_seat_individual_suite),
            //     Icon(Icons.add_location),
            //   ],
            //   isSelected: _selections,
            //   onPressed: (int index) {
            //     setState(() {
            //       _selections[index] = !_selections[index];
            //     });
            //   },
            // )
          ]))
        ],
      ),
    );
  }
}
