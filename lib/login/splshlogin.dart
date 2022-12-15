import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';
import 'package:money_link/login/loginpage.dart';

class splash_login extends StatefulWidget {
  const splash_login({Key? key}) : super(key: key);

  @override
  _splash_loginState createState() => _splash_loginState();
}

class _splash_loginState extends State<splash_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors_Widget.themeColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(75)),
                child: Image.asset(
                  "images/svg/mlogo.jpg",
                  width: MediaQuery.of(context).size.width * 0.5,
                )),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login_page()),
                );
              },
              child: Text(
                "Log in with existing account",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
