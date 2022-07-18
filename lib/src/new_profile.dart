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
                          fontSize: 25,
                          fontFamily: "SFPRODISPLAY",
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Image.asset("assets/Vector.png"),
                ],
              ),
            ),
            test(
                "assets/phone.png", 'Email Address', 'kylegrave1234@gamil.com'),
            divide(),
            test("assets/phone.png", 'Mobile No.', '123456789'),
            divide(),
            test("assets/phone.png", 'Host Address',
                '110 W Rolly St, Henderson'),
            divide(),
            test("assets/phone.png", 'Bank Account Details', '1632 960209'),
            divide(),
            test("assets/phone.png", 'Support', 'Help & Support'),
            divide(),
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
                const SizedBox(
                  width: 15,
                  height: 15,
                ),
                Text(title,
                    style: const TextStyle(
                        fontFamily: "SFPRODISPLAY",
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14)),
              ],
            ),
          ),
          Expanded(
              child: Text(description,
                  style: const TextStyle(
                      fontFamily: "SFPRODISPLAY",
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF7C98AB))))
        ],
      ),
    );
  }

  Widget divide() {
    return const Divider(
      thickness: 0.8, // thickness of the line
      indent: 20, // empty space to the leading edge of divider.
      endIndent: 20, // empty space to the trailing edge of the divider.
      color: Colors.grey, // The color to use when painting the line.
      // height: 0, // The divider's height extent.
    );
  }
}
