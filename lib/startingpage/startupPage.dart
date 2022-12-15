import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_link/Widgets/colors.dart';
import 'package:story_view/story_view.dart';

import 'emailloginpage.dart';

class startup_page extends StatelessWidget {
  const startup_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller = StoryController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Container(
            color: Colors_Widget.themeColor,
            child: StoryView(
              controller: Controller,
              storyItems: [
                StoryItem(
                  Container(
                      color: Colors_Widget.themeColor,
                      child: Center(
                          child: Text(
                        "Hi",
                        style: TextStyle(color: Colors.black),
                      ))),
                  duration: Duration(seconds: 4),
                ),
                StoryItem(
                    Container(
                        color: Colors_Widget.themeColor,
                        child: Center(child: Icon(Icons.account_box))),
                    duration: Duration(seconds: 4)),
                StoryItem(
                    Container(
                        color: Colors_Widget.themeColor,
                        child: Center(child: Icon(Icons.account_box))),
                    duration: Duration(seconds: 4)),
              ],
              inline: false,
              repeat: true,
            ),
          ),
          Positioned(
            bottom: 0,
            // height: MediaQuery.of(context).size.height*0.50,
            child: Container(
              color: Colors_Widget.themeColor,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // SizedBox(height: 50,),
                  Container(
                    color: Colors_Widget.themeColor,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Check our rates",
                        style: TextStyle(color: Colors.lightBlueAccent),
                      ),
                    ),
                  ),
                  // SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 50,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.lightBlueAccent)),
                      onPressed: null,
                      child: Text(
                        "Log in with fingerprint",
                        style: TextStyle(color: Colors.lightBlueAccent),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // width: double.infinity,
                          child: MaterialButton(
                            height: 50,
                            minWidth: MediaQuery.of(context).size.width * 0.43,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => email_login()));
                            },
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.lightBlueAccent,
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          ),
                        ),
                        Container(
                          // width: double.infinity,
                          child: MaterialButton(
                            height: 50,
                            minWidth: MediaQuery.of(context).size.width * 0.43,
                            onPressed: () {},
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.lightBlueAccent,
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
