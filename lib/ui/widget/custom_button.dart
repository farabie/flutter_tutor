// import 'package:flutter/material.dart';
// import 'package:division/division.dart';
// import 'package:flutter_tutor/style/custom_style.dart';

// class CustomButton extends StatefulWidget {
//   final ParentStyle buttonStyle;

//   const CustomButton(this.buttonStyle, {super.key});

//   @override
//   State<CustomButton> createState() => _CustomButtonState();
// }

// class _CustomButtonState extends State<CustomButton> {
//   bool isTap = false;
//   @override
//   Widget build(BuildContext context) {
//     return Parent(
//       style: widget.buttonStyle.clone()
//         ..scale((isTap) ? 1.1 : 1)
//         ..elevation((isTap) ? 0 : 5),
//       gesture: Gestures()
//         ..onTapDown((details) {
//           setState(() {
//             isTap = true;
//           });
//         })
//         ..onTapUp((details) {
//           setState(() {
//             isTap = false;
//           });
//         })
//         ..onTapCancel(() {
//           setState(() {
//             isTap = false;
//           });
//         }),
//       child: Container(
//         child: Txt(
//           'Division',
//           style: CustomStyles.txtStyle,
//         ),
//       ),
//     );
//   }
// }
