import 'package:flutter/material.dart';

class send_bar extends StatefulWidget {
  const send_bar({Key? key}) : super(key: key);

  @override
  _send_barState createState() => _send_barState();
}

class _send_barState extends State<send_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("data"),
        ),
      ),
    );
  }
}
