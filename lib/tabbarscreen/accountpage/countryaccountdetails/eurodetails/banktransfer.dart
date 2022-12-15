import 'package:flutter/material.dart';

class bank_transfer extends StatefulWidget {
  const bank_transfer({Key? key}) : super(key: key);

  @override
  _bank_transferState createState() => _bank_transferState();
}

class _bank_transferState extends State<bank_transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: MaterialButton(
              color: Colors.lightBlue,
              onPressed: () {},
              child: Text(
                "I understand",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Data')],
          ),
        ));
  }
}
