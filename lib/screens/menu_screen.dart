import 'package:flutter/material.dart';
import 'package:matchdayai_task/common_utils/common_widgets.dart';
import 'package:matchdayai_task/screens/my_matches_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 50.0,
                      backgroundImage:
                          ExactAssetImage('assets/images/profile.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CommonWidgets(
                        child: const Icon(Icons.home),
                        text: const Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyMatchesScreen(),
                          ),
                        );
                      },
                      child: CommonWidgets(
                        child: const Icon(Icons.home),
                        text: const Text(
                          'My Matches',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CommonWidgets(
                        child: const Icon(Icons.home),
                        text: const Text(
                          'My Academy',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    CommonWidgets(
                      child: const Icon(Icons.home),
                      text: const Text(
                        'All Matches',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              Image.asset(
                'assets/images/matchday.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
