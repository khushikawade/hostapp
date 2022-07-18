import 'package:flutter/material.dart';
import 'package:hostapp/src/chart.dart';
import 'package:number_paginator/number_paginator.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const ButtonPage(title: 'Charging'),
    );
  }
}

class ButtonPage extends StatefulWidget {
  const ButtonPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  int _counter = 0;
  int _numPages = 4;
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var pages = List.generate(
      _numPages,
      (index) => Center(
          // child: Text("Page ${index + 1}"),
          ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/path.png'),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Home",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 32)),
          ],
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Image.asset("assets/bell.png"),
                onTap: () {},
              ),
              Text(
                "Alert",
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  child: Image.asset("assets/shape.png"),
                  onTap: () {},
                ),
                Text(
                  "Profile",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // color: Theme.of(context).backgroundColor,
              // height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/common_bg@2x.png"),
                  fit: BoxFit.cover, // -> 02
                ),
              ),
              // child: pages[_currentPage],
              child: Stack(
                children: [
                  ListView.builder(
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Color(0XFFFFFFFF),
                            // elevation: 10,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              // mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                test('Vehicle id'),
                                Padding(padding: EdgeInsets.only(top: 20))
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),

              // child:
            ),
          ),

          // LineCharts(),
          // LineCharts(),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget test(title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23, 20, 23, 8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
            flex: 3,
            child: Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF22334F)))),
        Expanded(
          flex: 1,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0XFFD91F5D),
                //padding: const EdgeInsets.fromLTRB(140, 12, 10, 12),
                // padding: const EdgeInsets.fromLTRB(10, 10, 12, 12),
                shape: const StadiumBorder()),
            onPressed: () {
              // Navigator.pop(context);
            },
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Text(
                  "Start",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Poppins-Regular'),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget Divide() {
    return const Divider(
      thickness: 0.8, // thickness of the line
      indent: 20, // empty space to the leading edge of divider.
      endIndent: 20, // empty space to the trailing edge of the divider.
      color: Color(0xFFD8D8D8), // The color to use when painting the line.
      // height: 0, // The divider's height extent.
    );
  }
}
