import 'package:flutter/material.dart';

class CommonWidgets extends StatelessWidget {
  CommonWidgets({required this.child, required this.text});

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
