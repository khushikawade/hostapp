import 'package:flutter/material.dart';
import 'package:hostapp/src/chart.dart';
import 'package:number_paginator/number_paginator.dart';

class Controller extends StatelessWidget {
  const Controller({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const ControllerPage(title: 'Charging'),
    );
  }
}

class ControllerPage extends StatefulWidget {
  const ControllerPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  @override
  Widget build(BuildContext context) {
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
              "Controller",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 32),
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
                                      const EdgeInsets.fromLTRB(23, 20, 23, 4),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("Controller ID",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15)),
                                        Image.asset("assets/arrow.png"),
                                      ]),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(23, 5, 23, 17),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("1234456789",
                                            style: TextStyle(
                                                color: Color(0XFF949495),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500)),
                                        Text(" ")
                                      ]),
                                ),
                                test('Status', 'In Progress'),
                                Divide(),
                                test('Start Time', '12:45 PM'),
                                Divide(),
                                test('United Consumed', '6 KWh'),
                                Divide(),
                                test('Parking Duration', '2 Hours'),
                                Divide(),
                                test('Session Id', '123456'),
                                Divide(),
                                test('Vehicle Id', '123456'),
                                Divide(),
                                test('Vehicle Registration No.', '123456'),
                                Divide(),
                                test('Vehicle Name', 'Activa'),
                                Divide(),
                                test('Power', '76.7094'),
                                Padding(padding: const EdgeInsets.only(top: 30))
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

  Widget test(title, description) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23, 5, 23, 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
            flex: 4,
            child: Text(title,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF22334F)))),
        Expanded(
            flex: 2,
            child: Text(description,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF949495)))),
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
