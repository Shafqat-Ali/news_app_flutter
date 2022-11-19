import 'package:flutter/material.dart';
import 'top_textarea_row.dart';
import 'latest_news_row.dart';
import 'slider_screen.dart';
import 'buttons_list_screen.dart';
import 'news_highlights_screen.dart';

class WrapperWidget extends StatelessWidget {
  const WrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          TopTextAreaWidget(),
          LatestNewsRow2(),
          SliderWidget(),
          ButtonsList(),
          NewHiglightsWidget()
        ],
      ),
    );
  }
}




// class MyCustomForm extends StatelessWidget {
//   const MyCustomForm({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           SizedBox(
//             width: double.maxFinite,
//             child: Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(8),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       hintText: 'Dogecoin on the Moon...',
//                       border: OutlineInputBorder(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(50.0)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//             child: TextFormField(
//               decoration: InputDecoration(
//                 hintText: 'Dogecoin on the Moon...',
//                 border: OutlineInputBorder(
//                   borderRadius: const BorderRadius.all(Radius.circular(50.0)),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//             child: TextFormField(
//               decoration: const InputDecoration(
//                 border: UnderlineInputBorder(),
//                 labelText: 'Enter your username',
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         children: <Widget>[
//           Text('sdfsdfsdf'),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               SizedBox(
//                 height: 30.0,
//                 child: TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Password',
//                   ),
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
