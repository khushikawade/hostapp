import 'package:flutter/material.dart';
import 'package:hostapp/src/chart.dart';
import 'package:number_paginator/number_paginator.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const PaymentPage(title: 'Payment'),
    );
  }
}

class PaymentPage extends StatefulWidget {
  const PaymentPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
            Text("Payment",
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
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 10, 15, 0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Color(0XFFFFFFFF),
                            // elevation: 10,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              // mainAxisSize: MainAxisSize.max,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(30, 20, 0, 4),
                                  child: Text(
                                    "Charging Session ID",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(28, 5, 23, 17),
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
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 0, 23, 30),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Expanded(
                                            flex: 4,
                                            child: Text("Charging Cost",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14))),
                                        Expanded(
                                            flex: 2,
                                            child: Text("\$11.20",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF949495)))),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Expanded(
                            child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Color(0XFFFFFFFF),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 20, 23, 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Expanded(
                                      flex: 4,
                                      child: Text("Total Pament Received",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14))),
                                  Expanded(
                                      flex: 2,
                                      child: Text("\$200.15",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF949495)))),
                                ]),
                          ),
                        ))),
                  ),
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
