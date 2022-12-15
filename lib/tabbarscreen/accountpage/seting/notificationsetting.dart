import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

class notifcation_setting extends StatefulWidget {
  const notifcation_setting({Key? key}) : super(key: key);

  @override
  _notifcation_settingState createState() => _notifcation_settingState();
}

class _notifcation_settingState extends State<notifcation_setting> {
  bool isSwitched = false;

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
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Allow notifications",
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
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                "Your transfer and balances",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text("Notifications about where your money is."),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child:
                    Icon(Icons.email_outlined, color: Colors_Widget.themeColor),
              ),
              title: Text(
                "Email",
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
                  Icons.mobile_screen_share_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Push",
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
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                "Your debit card",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text("Notifications about your card transactions."),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.email_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Email",
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
                  Icons.mobile_screen_share_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Push",
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
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                "Currencies and features",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text(
                  "News about our latest and greatest work. Plus tips on using Wise."),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.email_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Email",
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
                  Icons.mobile_screen_share_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Push",
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
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                "Interviews, reviews and surveys",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle:
                  Text("Invites to test new products and share your thoughts."),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.email_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Email",
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
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                "Our campaigns",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors_Widget.themeColor,
                ),
              ),
              subtitle: Text(
                  "Updates about causes we care about. Chances to get involved."),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.email_outlined,
                  color: Colors_Widget.themeColor,
                ),
              ),
              title: Text(
                "Email",
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
          ]))
        ],
      ),
    );
  }
}
