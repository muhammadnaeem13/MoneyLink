// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';
import 'package:money_link/tabbarscreen/accountpage/accountbar.dart';
import 'package:money_link/tabbarscreen/cardpage/cardbar.dart';
import 'package:money_link/tabbarscreen/homebarpage/homebar.dart';
import 'package:money_link/tabbarscreen/recipientspage/recipientsbar.dart';
import 'package:money_link/tabbarscreen/sendbar.dart';

class home_screen extends StatefulWidget {
  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    home_bar(),
    card_bar(),
    recipient_bar(),
    account_bar(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = home_bar(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        mini: true,
        backgroundColor: Colors.green,
        child: Icon(
          Icons.send_outlined,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => send_bar(),
              ));
        },
      ),
      bottomNavigationBar: BottomAppBar(
        // shape: CircularNotchedRectangle(),
        // notchMargin: 10,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      currentScreen =
                          home_bar(); // if user taps on this dashboard tab will be active
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.home_outlined,
                        color: currentTab == 0
                            ? Colors.blue
                            : Colors_Widget.themeColor,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: currentTab == 0
                              ? Colors.blue
                              : Colors_Widget.themeColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  // minWidth: 40,
                  onTap: () {
                    setState(() {
                      currentScreen =
                          card_bar(); // if user taps on this dashboard tab will be active
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.credit_card_outlined,
                        color: currentTab == 1
                            ? Colors.blue
                            : Colors_Widget.themeColor,
                      ),
                      Text(
                        'Card',
                        style: TextStyle(
                          color: currentTab == 1
                              ? Colors.blue
                              : Colors_Widget.themeColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.send_outlined,
                    color: Colors.white,
                  ),
                  new Text(
                    'Send',
                    style: TextStyle(
                      color: Colors_Widget.themeColor,
                    ),
                  ),
                ],
              )),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      currentScreen =
                          recipient_bar(); // if user taps on this dashboard tab will be active
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.people_outline,
                        color: currentTab == 2
                            ? Colors.blue
                            : Colors_Widget.themeColor,
                      ),
                      Text(
                        'Recipients',
                        maxLines: 1,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: currentTab == 2
                              ? Colors.blue
                              : Colors_Widget.themeColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  // minWidth: 40,
                  onTap: () {
                    setState(() {
                      currentScreen =
                          account_bar(); // if user taps on this dashboard tab will be active
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.person_outline,
                        color: currentTab == 3
                            ? Colors.blue
                            : Colors_Widget.themeColor,
                      ),
                      Text(
                        'Account',
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: currentTab == 3
                              ? Colors.blue
                              : Colors_Widget.themeColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//
// class _home_screenState extends State<home_screen> {
//   int selectedpage = 0;
//   final baroption = [
//     home_bar(),
//     card_bar(),
//     send_bar(),
//     recipient_bar(),
//     account_bar(),
//   ];
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold();
//     // return new Scaffold(
//     //   resizeToAvoidBottomInset: false,
//     //   bottomNavigationBar: ConvexAppBar(
//     //       items: [
//     //         TabItem(
//     //           icon: Icons.home,
//     //           title: 'Home',
//     //         ),
//     //         TabItem(icon: Icons.credit_card, title: 'Card'),
//     //         TabItem(
//     //           icon: Icon(
//     //             Icons.height,
//     //           ),
//     //           title: 'Send',
//     //         ),
//     //         TabItem(icon: Icons.people_outline, title: 'Recipients'),
//     //         TabItem(icon: Icons.person_outline, title: 'Account'),
//     //       ],
//     //       // curveSize: 50,
//     //       // top: -15,
//     //       // style: TabStyle.fixed,
//     //       activeColor: Color(0xFF1F1F52),
//     //       backgroundColor: Colors.white,
//     //       color: Colors.black,
//     //       initialActiveIndex: selectedpage,
//     //       onTap: (int index) {
//     //         setState(() {
//     //           selectedpage = index;
//     //         });
//     //       }),
//     //   body: baroption[selectedpage],
//     // );
//   }
// }
