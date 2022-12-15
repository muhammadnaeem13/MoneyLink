import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

Widget Email() {
  return TextFormField(
    decoration: InputDecoration(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      prefixIcon: Icon(
        Icons.account_box,
        color: Colors.black,
      ),
      hintText: "12 digit ID",
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    keyboardType: TextInputType.emailAddress,
    autofillHints: [AutofillHints.email],
    validator: (email) => email != null && !EmailValidator.validate(email)
        ? 'Enter a valid email'
        : null,
  );
}

// Widget Password() {
//   return Padding(
//     padding: const EdgeInsets.fromLTRB(30, 0, 40, 0),
//     child: TextFormField(
//       decoration: InputDecoration(
//         contentPadding:
//             const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         prefixIcon: Icon(
//           Icons.lock,
//           color: Colors.black,
//         ),
//         hintText: "Your Password",
//       ),
//     ),
//   );
// }
