import 'package:flutter/material.dart';
import 'package:hostapp/src/chart.dart';
import 'package:number_paginator/number_paginator.dart';

class Charging2 extends StatelessWidget {
  const Charging2({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const ChargingPage2(title: 'Charging'),
    );
  }
}

class ChargingPage2 extends StatefulWidget {
  const ChargingPage2({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<ChargingPage2> createState() => _ChargingPage2State();
}

class _ChargingPage2State extends State<ChargingPage2> {
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
            Text(
              "Charging",
              style: TextStyle(color: Colors.black),
            ),
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
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(23, 20, 23, 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("Controller Id",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Image.asset("assets/arrow.png"),
                                      ]),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(23, 5, 23, 8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("1523697125"),
                                        Text(" ")
                                      ]),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(23, 0, 23, 8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Expanded(
                                            flex: 3,
                                            child: Text("Registration Date")),
                                        Expanded(
                                            flex: 1,
                                            child: Text("In Progress")),
                                      ]),
                                ),
                                const Divider(
                                  thickness: 0.8, // thickness of the line
                                  indent:
                                      20, // empty space to the leading edge of divider.
                                  endIndent:
                                      20, // empty space to the trailing edge of the divider.
                                  color: Colors
                                      .grey, // The color to use when painting the line.
                                  // height: 0, // The divider's height extent.
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(23, 0, 23, 8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Expanded(
                                            flex: 3, child: Text("Status")),
                                        Expanded(
                                            flex: 1, child: Text("Running")),
                                      ]),
                                ),
                                const Divider(
                                  thickness: 0.8, // thickness of the line
                                  indent:
                                      20, // empty space to the leading edge of divider.
                                  endIndent:
                                      20, // empty space to the trailing edge of the divider.
                                  color: Colors
                                      .grey, // The color to use when painting the line.
                                  // height: 0, // The divider's height extent.
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(23, 0, 23, 8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Expanded(
                                            flex: 3,
                                            child: Text("Firmware Version")),
                                        Expanded(
                                            flex: 1, child: Text("EV.206")),
                                      ]),
                                ),
                                const Divider(
                                  thickness: 0.8, // thickness of the line
                                  indent:
                                      20, // empty space to the leading edge of divider.
                                  endIndent:
                                      20, // empty space to the trailing edge of the divider.
                                  color: Colors
                                      .grey, // The color to use when painting the line.
                                  // height: 0, // The divider's height extent.
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(23, 0, 23, 8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Expanded(
                                            flex: 3,
                                            child: Text("Update Firmware")),
                                        Expanded(
                                            flex: 1, child: Text("Ev.208")),
                                      ]),
                                ),
                                const Divider(
                                  thickness: 0.8, // thickness of the line
                                  indent:
                                      20, // empty space to the leading edge of divider.
                                  endIndent:
                                      20, // empty space to the trailing edge of the divider.
                                  color: Colors
                                      .grey, // The color to use when painting the line.
                                  // height: 0, // The divider's height extent.
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(23, 0, 23, 8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Expanded(
                                            flex: 5,
                                            child: Text("Update Name")),
                                        Expanded(
                                            flex: 2,
                                            child: Text("Joy Johnson")),
                                      ]),
                                ),
                                const Divider(
                                  thickness: 0.8, // thickness of the line
                                  indent:
                                      20, // empty space to the leading edge of divider.
                                  endIndent:
                                      20, // empty space to the trailing edge of the divider.
                                  color: Colors
                                      .grey, // The color to use when painting the line.
                                  // height: 0, // The divider's height extent.
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(23, 8, 23, 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            flex: 6,
                                            child: const Text("Location")),
                                        Expanded(
                                            flex: 2,
                                            child: const Text("ltaly")),
                                      ]),
                                ),
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
}
