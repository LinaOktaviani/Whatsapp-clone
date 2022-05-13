import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/home_page.dart';
import 'package:whatsapp_clone/pages/message.dart';
import 'package:whatsapp_clone/pages/status_page.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // theme: ThemeData(fontFamily: 'Poppins'),
//       home: HomePage(),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MessagePage(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatusPage(),
    );
  }
}
