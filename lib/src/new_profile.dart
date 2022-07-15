import 'dart:math';

import 'package:flutter/material.dart';

class NewProfile extends StatelessWidget {
  const NewProfile({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const NewProfilePage(title: 'Charging'),
    );
  }
}

class NewProfilePage extends StatefulWidget {
  const NewProfilePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<NewProfilePage> createState() => _NewProfilePageState();
}

class _NewProfilePageState extends State<NewProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 98.0),
          child: Column(children: [
            Image.asset("assets/Ellipse.png"),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Kyle Grave ",
                        style: TextStyle(
                            fontSize: 25, fontFamily: "SFPRODISPLAYMEDIUM")),
                  ),
                  Image.asset("assets/Vector.png"),
                ],
              ),
            ),
            test(
                "assets/phone.png", 'Email Address', 'kylegrave1234@gamil.com'),
            const Divider(
              thickness: 0.8, // thickness of the line
              indent: 20, // empty space to the leading edge of divider.
              endIndent: 20, // empty space to the trailing edge of the divider.
              color: Colors.grey, // The color to use when painting the line.
              // height: 0, // The divider's height extent.
            ),
            test("assets/phone.png", 'Mobile No.', '123456789'),
            const Divider(
              thickness: 0.8, // thickness of the line
              indent: 20, // empty space to the leading edge of divider.
              endIndent: 20, // empty space to the trailing edge of the divider.
              color: Colors.grey, // The color to use when painting the line.
              // height: 0, // The divider's height extent.
            ),
            test("assets/phone.png", 'Host Address',
                '110 W Rolly St, Henderson'),
            const Divider(
              thickness: 0.8, // thickness of the line
              indent: 20, // empty space to the leading edge of divider.
              endIndent: 20, // empty space to the trailing edge of the divider.
              color: Colors.grey, // The color to use when painting the line.
              // height: 0, // The divider's height extent.
            ),
            test("assets/phone.png", 'Bank Account Details', '1632 960209'),
            const Divider(
              thickness: 0.8, // thickness of the line
              indent: 20, // empty space to the leading edge of divider.
              endIndent: 20, // empty space to the trailing edge of the divider.
              color: Colors.grey, // The color to use when painting the line.
              // height: 0, // The divider's height extent.
            ),
            test("assets/phone.png", 'Support', 'Help & Support'),
            const Divider(
              thickness: 0.8, // thickness of the line
              indent: 20, // empty space to the leading edge of divider.
              endIndent: 20, // empty space to the trailing edge of the divider.
              color: Colors.grey, // The color to use when painting the line.
              // height: 0, // The divider's height extent.
            )
          ]),
        ),
      ],
    ));
  }

  Widget test(image, title, description) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(image),
                SizedBox(
                  width: 15,
                  height: 15,
                ),
                Text(title),
              ],
            ),
          ),
          Expanded(child: Text(description))
        ],
      ),
    );
  }
  // Widget divide(image, title, description) {
  //   return Padding(
  //     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
  //      const Divider(
  //             thickness: 0.8, // thickness of the line
  //             indent: 20, // empty space to the leading edge of divider.
  //             endIndent: 20, // empty space to the trailing edge of the divider.
  //             color: Colors.grey, // The color to use when painting the line.
  //             // height: 0, // The divider's height extent.
  //           )
  //   );
  // }
}
