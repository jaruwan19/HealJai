import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashbaord'),
        backgroundColor: Color.fromRGBO(188, 170, 164, 1),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [],
              ),
              Row(
                children: [],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.chat,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'กล่องข้อความ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(250.0, 100.0, 250.0, 250.0),
                    items: [
                      PopupMenuItem(
                        child: Text('รายสัปดาห์'),
                      ),
                      PopupMenuItem(
                        child: Text('รายเดือน'),
                      ),
                      PopupMenuItem(
                        child: Text('รายปี'),
                      ),
                    ],
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.filter_alt_rounded,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'ตัวกรอง',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 0),
            padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Card(
                        child: Container(
                          // padding: EdgeInsets.fromLTRB(35, 0, 35, 0),

                          // width: 162,
                          // height: 162,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed("/dashboard");
                                },
                                child: const Image(
                                  image: AssetImage(
                                      'assets/images/dashboard_logo.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    Card(
                      child: Container(
                        // padding: EdgeInsets.fromLTRB(35, 0, 35, 0),

                        // width: 162,
                        // height: 162,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed("/donut_chart");
                              },
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/donut_chart_logo.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0, bottom: 20),
            padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
            child: Row(
              children: [
                Expanded(
                    child: Card(
                        child: Container(
                  // width: 330,
                  // height: 170,
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/bar_chart");
                        },
                        child: const Image(
                          alignment: Alignment.center,
                          height: 170,
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/images/bar_chart_logo.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                )))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0, bottom: 0),
            padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Positioned(
                  bottom: 0,
                  child: Expanded(
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 150,
                        child: Text("ข้อมูลเกี่ยวกับอารมณ์ในเดือนนี้"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
