import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color? reng;
  final Widget child;

  MyContainer({this.reng = Colors.white, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: reng),
    );
  }
}
