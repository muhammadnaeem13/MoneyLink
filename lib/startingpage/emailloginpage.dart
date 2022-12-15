import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_link/Widgets/colors.dart';
import 'package:money_link/homepage/homescreen.dart';

class email_login extends StatefulWidget {
  @override
  _SliverAppBarState createState() => _SliverAppBarState();
}

class _SliverAppBarState extends State<email_login> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: menu(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              leading: Icon(
                Icons.arrow_back,
                color: Colors.lightBlueAccent,
              ),
              pinned: true,
              expandedHeight: 120,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors_Widget.themeColor,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  MaterialButton(
                                    height: 50,
                                    minWidth: double.infinity,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  home_screen()));
                                    },
                                    child: Text(
                                      "Log in",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    color: Colors.lightBlueAccent,
                                  ),
                                  SizedBox(
                                    height: 23,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Forgot Password?",
                                          style: TextStyle(
                                            color: Colors.lightBlueAccent,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Center(
                            child: Text(
                              "Or log in with",
                              style: TextStyle(
                                color: Colors.lightBlueAccent,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

Widget menu() {
  return Container(
    child: TabBar(
      labelPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 4),
      tabs: [
        Tab(
          child: Container(
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: MaterialButton(
                minWidth: double.infinity,
                splashColor: Colors.blue,
                onPressed: () {},
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)),
                child: SvgPicture.asset(
                  "images/svg/Gogle.svg",
                  height: 30,
                ),
                height: 50,
              )),
        ),
        Tab(
          child: Container(
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              splashColor: Colors.blue,
              onPressed: () {},
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26)),
              child: SignInButton(
                Buttons.Facebook,
                mini: true,
                onPressed: () {},
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(75)),
              ),
              height: 50,
            ),
          ),
        ),
        Tab(
          child: Container(
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              splashColor: Colors.black,
              onPressed: () {},
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26)),
              child: SignInButton(
                Buttons.Apple,
                mini: true,
                onPressed: () {},
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(75),
                    borderSide: BorderSide(color: Colors.black12)),
              ),
              height: 50,
            ),
          ),
        )
      ],
    ),
  );
}
