import 'package:flutter/material.dart';

class CommonWidgets extends StatelessWidget {
  CommonWidgets({
    required this.child,
    required this.text,
  });

  final Widget child;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(1.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            child,
            text,
          ],
        ),
      ),
    );
  }
}

class CommonContainer extends StatelessWidget {
  const CommonContainer(
      {required this.child, required this.text1, required this.text2});

  final Widget child;
  final Widget text1;
  final Widget text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: 90.0,
      decoration: BoxDecoration(
        color: const Color(0xFFECF0FA),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          child,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[text1, text2],
          ),
        ],
      ),
    );
  }
}

class CommonTrackRecordContainer extends StatelessWidget {
  CommonTrackRecordContainer({required this.text, required this.record});

  final Widget text;
  final Widget record;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: 90.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[text, record],
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFECF0FA),
        border: Border.all(
          color: Colors.green,
        ),
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}

class CommonCountContainer extends StatelessWidget {
  CommonCountContainer(
      {required this.child, required this.text, required this.count});

  final Widget child;
  final Widget text;
  final Widget count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 90.0,
      decoration: BoxDecoration(
        color: const Color(0xFFECF0FA),
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[child, text, count],
      ),
    );
  }
}

class SwipeImage extends StatelessWidget {
  const SwipeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Center(
          child: Text(
            'Olympics Tokyo',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontStyle: FontStyle.normal),
          ),
        ),
        const Center(
          child: Text(
            'Semi Final Court 1',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: <Widget>[
                Image.asset('assets/images/sindhu.png',
                    height: 100.0, width: 100.0),
                const Positioned(
                  bottom: 5.0,
                  child: Text(
                    'PV Sindhu',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'v/s',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    '11-21, 21-14, 21-19',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Image.asset('assets/images/mark.png',
                    height: 50.0, width: 50.0),
              ],
            ),
            Image.asset('assets/images/marina.png',
                height: 100.0, width: 100.0),
          ],
        ),
      ],
    );
  }
}
