import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

import 'accountrecipientdetails.dart';

class send_anyone extends StatefulWidget {
  const send_anyone({Key? key}) : super(key: key);

  @override
  _send_anyoneState createState() => _send_anyoneState();
}

class _send_anyoneState extends State<send_anyone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.lightBlue,
            )),
        backgroundColor: Colors.white,
        title: TextField(
          autofocus: true,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              hintStyle: TextStyle(color: Colors.lightBlue, fontSize: 18),
              hintText: " Email, phone, or name",
              focusColor: Colors.blue,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "Send to anyone using an email, phone or name",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    "Other ways to send",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.home_outlined,
                    color: Colors_Widget.themeColor,
                  ),
                ),
                title: Text(
                  "Use account details",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors_Widget.themeColor,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => accountRecipient_details()));
                },
              ),
              Divider(
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
