import 'package:flutter/material.dart';
import 'package:money_link/Widgets/colors.dart';

class earn_dollor extends StatefulWidget {
  const earn_dollor({Key? key}) : super(key: key);

  @override
  _earn_dollorState createState() => _earn_dollorState();
}

class _earn_dollorState extends State<earn_dollor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.clear,
            color: Colors.lightBlue,
          ),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child: animationimage()),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Invite and earn 50 GBP",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors_Widget.themeColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Earn 50 GBP for every 3 friends who transfer over 200 GBP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black38,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "How to qualify",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 1,
                      color: Colors.lightBlue,
                    )),
                    child: Center(
                      child: Text(
                        "Invite via email",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 1,
                      color: Colors.lightBlue,
                    )),
                    child: Center(
                      child: Text(
                        "Invite via WhatsApp",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 1,
                      color: Colors.lightBlue,
                    )),
                    child: Center(
                      child: Text(
                        "Invite via Messenger",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 1,
                      color: Colors.lightBlue,
                    )),
                    child: Center(
                      child: Text(
                        "Copy my invite Link",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class animationimage extends StatefulWidget {
  const animationimage({Key? key}) : super(key: key);

  @override
  _animationimageState createState() => _animationimageState();
}

class _animationimageState extends State<animationimage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 4))
        ..repeat();
  late Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        "images/nn.jpeg",
        height: 200,
        width: 200,
      ),
    );
  }
}
