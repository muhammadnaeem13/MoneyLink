import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:money_link/Widgets/colors.dart';

class List_Tiless extends StatelessWidget {
  final String trailing_text;
  final String trailing_text2;
  final String sub_text;
  final String title_text;
  // final String _text;
  final Widget child;
  final colorth = Color(0xFF1F1F52);
  final Function onPressed;
  final Icon icon;
  final Icon leading_icon;
  final ListTile listTile;
  final TextStyle textStyle;
  List_Tiless({
    required this.child,
    required this.icon,
    required this.listTile,
    required this.textStyle,
    required this.sub_text,
    required this.title_text,
    required this.leading_icon,
    required this.trailing_text,
    required this.trailing_text2,
    required VoidCallback this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading_icon,
      trailing: IconButton(
        onPressed: onPressed(),
        //   showMaterialModalBottomSheet(
        //       shape: OutlineInputBorder(
        //           borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(10),
        //               topRight: Radius.circular(10))),
        //       context: context,
        //       builder: (context) => Expanded(
        //             child: SingleChildScrollView(
        //               child: Container(
        //                 child: Padding(
        //                   padding: const EdgeInsets.fromLTRB(20, 24, 20, 10),
        //                   child: Column(
        //                     mainAxisSize: MainAxisSize.min,
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text(
        //                         trailing_text,
        //                         style: TextStyle(
        //                             color: Color(0xFF1F1F52),
        //                             fontSize: 24,
        //                             fontWeight: FontWeight.bold),
        //                       ),
        //                       SizedBox(
        //                         height: 10,
        //                       ),
        //                       Text(
        //                         trailing_text2,
        //                         style: TextStyle(
        //                             fontSize: 16, color: Colors.grey[600]),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ));
        // },
        icon: icon,
      ),
      title: Text(
        title_text,
        style: TextStyle(
          color: Colors_Widget.themeColor,
          // fontWeight: Colors_Widget.fontSize,
          fontSize: Colors_Widget.appbarFontSize,
        ),
      ),
      subtitle: Text(
        sub_text,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black54,
        ),
      ),
    );
  }
}
