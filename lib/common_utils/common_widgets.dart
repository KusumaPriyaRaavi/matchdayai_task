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
        color: Colors.grey,
        borderRadius: BorderRadius.circular(2.0),
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
        color: Colors.greenAccent,
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
        color: Colors.grey,
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Row(
        children: <Widget>[child, text, count],
      ),
    );
  }
}
