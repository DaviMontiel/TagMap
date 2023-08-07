// import 'package:flutter/material.dart';
//
// import 'MyText.dart';
//
// class MyTextField extends StatelessWidget {
//
//   final String text;
//   final double internalPadding;
//
//
//   const MyTextField(
//     this.text,
//       {
//         super.key,
//         this.internalPadding = 7
//       }
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(15),
//       child: SizedBox(
//         height: 22,
//         child: Row(
//           // crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             MyText(
//               text,
//               fontFamily: 'Font_Shill',
//               fontColor: Colors.white,
//               fontSize: 18,
//             ),
//
//             Expanded(
//               child: Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 18),
//                     child: TextField(
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontFamily: 'Font_Shill'
//                       ),
//                       cursorColor: Colors.white,
//                       decoration: InputDecoration(
//                         focusedBorder: const UnderlineInputBorder(
//                           borderSide: BorderSide.none
//                         ),
//                         contentPadding: EdgeInsets.only(left: internalPadding)
//                       ),
//                     ),
//                   ),
//
//                   IgnorePointer(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         const SizedBox(height: 20,),
//                         Image.asset('lib/assets/images/TextFieldLine.png')
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }//WID
// }//CLASS

import 'package:flutter/material.dart';

import 'MyText.dart';

class MyTextField extends StatelessWidget {

  final String text;
  final double? width;
  final double textTopAlign;
  final double internalPadding;
  final double? lineHeight;
  final double lineBottom;


  const MyTextField(
      this.text,
      {
        super.key,
        this.width,
        this.textTopAlign = 0,
        this.internalPadding = 10,
        this.lineHeight,
        this.lineBottom = 8
      }
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SizedBox(
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyText(
              text,
              fontFamily: 'Font_Shill',
              fontColor: Colors.white,
              fontSize: 18,
            ),

            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  TextField(
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Font_Shill'
                    ),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide.none
                      ),
                      contentPadding: EdgeInsets.only(left: internalPadding, top: textTopAlign)
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom: lineBottom),
                    child: Image.asset('lib/assets/images/TextFieldLine.png', height: lineHeight,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }//WID
}//CLASS