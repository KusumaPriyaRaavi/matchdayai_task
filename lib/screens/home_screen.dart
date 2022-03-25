import 'package:flutter/material.dart';
import 'package:matchdayai_task/common_utils/common_widgets.dart';
import 'package:matchdayai_task/screens/menu_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenuScreen(),
                  ),
                );
              },
              color: Colors.black,
              icon: const Icon(Icons.menu),
            ),
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 700,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration:
                                const BoxDecoration(color: Colors.blueAccent),
                            height: 80.0,
                            width: 15.0,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text('MY PROFILE')
                        ],
                      ),
                      const Divider(
                        height: 15.0,
                        thickness: 2.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                'assets/images/pvsindhu.png',
                                fit: BoxFit.cover,
                              ),
                              height: 100.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(color: Colors.grey)),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'PLAYER NAME',
                                  ),
                                  const Text(
                                    'PV SINDHU',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const <Widget>[
                                          Text('AGE'),
                                          Text(
                                            '26',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey)),
                                        height: 40.0,
                                        width: 40.0,
                                        child: Image.asset(
                                          'assets/images/academy.png',
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              height: 100.0,
                              width: 150.0,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 70,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/badge.png',
                                  width: 20.0,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text(
                                      'PLAYER LEVEL',
                                      style: TextStyle(fontSize: 10.0),
                                    ),
                                    Text(
                                      'SUPER STAR',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.yellowAccent),
                                    ),
                                    Text(
                                      'LEVEL 7',
                                      style: TextStyle(fontSize: 10.0),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          CommonContainer(
                            child: Image.asset('assets/images/cock.png'),
                            text1: const Text(
                              'PLAYING',
                              style: TextStyle(fontSize: 10.0),
                            ),
                            text2: const Text(
                              'ATTACK',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ),
                          CommonContainer(
                            child: Row(
                              children: <Widget>[
                                Image.asset('assets/images/left.png'),
                                Image.asset('assets/images/right.png')
                              ],
                            ),
                            text1: const Text(
                              'HANDEDNESS',
                              style: TextStyle(fontSize: 8.0),
                            ),
                            text2: const Text(
                              'RIGHT',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CommonTrackRecordContainer(
                            text: const Text(
                              'ATTACK RATING',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            record: const Text(
                              '56%',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          CommonTrackRecordContainer(
                            text: const Text(
                              'CAREER WINS',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            record: const Text(
                              '145',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          CommonTrackRecordContainer(
                            text: const Text(
                              'CAREER ERRORS',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            record: const Text(
                              '92',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CommonTrackRecordContainer(
                            text: const Text(
                              'DEFENCE RATING',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            record: const Text(
                              '86%',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          CommonTrackRecordContainer(
                            text: const Text(
                              'WINNER%',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            record: const Text(
                              '11%',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          CommonTrackRecordContainer(
                            text: const Text(
                              'ERROR%',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            record: const Text(
                              '07%',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CommonCountContainer(
                              child: Image.asset('assets/images/mymatches.png'),
                              text: const Text('Matches'),
                              count: const Text(
                                '10',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                            CommonCountContainer(
                              child:
                                  Image.asset('assets/images/allmatches.png'),
                              text: const Text('Wins'),
                              count: const Text(
                                '10',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                            CommonCountContainer(
                              child: Image.asset('assets/images/losses.png'),
                              text: const Text('Losses'),
                              count: const Text(
                                '10',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
