import 'package:flutter/material.dart';
import 'package:matchdayai_task/common_utils/common_widgets.dart';
import 'package:matchdayai_task/screens/menu_screen.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width * 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            decoration:
                                const BoxDecoration(color: Color(0xFF21294C)),
                            height: 50.0,
                            width: 10.0,
                          ),
                          const SizedBox(
                            width: 20.0,
                            height: 0.0,
                          ),
                          const Text('MY PROFILE')
                        ],
                      ),
                      const Divider(
                        height: 0.0,
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
                              color: const Color(0xFFECF0FA),
                              borderRadius: BorderRadius.circular(5.0),
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
                                        color: Color(0xFFD49C1D),
                                      ),
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
                                style: TextStyle(
                                  color: Color(0xFFAB0738),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 218,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration:
                                const BoxDecoration(color: Color(0xFF21294C)),
                            height: 35.0,
                            width: 10.0,
                          ),
                          const SizedBox(
                            width: 20.0,
                            height: 0.0,
                          ),
                          const Text('MY ACADEMY'),
                          const SizedBox(
                            width: 100.0,
                            height: 0.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                color: const Color(0xFF48B499),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text('View Matches'),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 1.0,
                        thickness: 2.0,
                      ),
                      Container(
                        height: 180.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.zero,
                            bottomLeft: Radius.circular(3.0),
                            bottomRight: Radius.circular(3.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/blackbg.png"),
                            fit: BoxFit.fill,
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.blue, Colors.purple]),
                        ),
                        child: Swiper(
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: const SwipeImage(),
                            );
                          },
                          pagination: const SwiperPagination(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 218,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration:
                                const BoxDecoration(color: Color(0xFF21294C)),
                            height: 35.0,
                            width: 10.0,
                          ),
                          const SizedBox(
                            width: 20.0,
                            height: 0.0,
                          ),
                          const Text('MY ACADEMY'),
                          const SizedBox(
                            width: 100.0,
                            height: 0.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                color: const Color(0xFF48B499),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text('View Academy'),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 1.0,
                        thickness: 2.0,
                      ),
                      Container(
                        height: 180.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.zero,
                            bottomLeft: Radius.circular(3.0),
                            bottomRight: Radius.circular(3.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/blackbg.png"),
                            fit: BoxFit.fill,
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.blue, Colors.purple]),
                        ),
                        child: Swiper(
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: const SwipeImage(),
                            );
                          },
                          pagination: const SwiperPagination(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFF21294C),
                  height: 200.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/images/mark.png'),
                            const SizedBox(width: 10.0),
                            const Text(
                              'MATCHDAY.AI',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Text(
                          'AI enabled intelligence',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.instagramSquare,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.twitter,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            const Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.linkedin,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const Text(
                          'Copyright | FAQ | Privacy Policy  | Terms of Services',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
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
