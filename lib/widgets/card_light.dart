import 'dart:ui';

import 'package:flutter/material.dart';

class CardLight extends StatelessWidget {
  final Widget child;
  const CardLight({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 2,
            spreadRadius: 1,
            color: Color.fromARGB(66, 0, 0, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                    Color.fromARGB(255, 109, 253, 152).withOpacity(0.9),
                    Color.fromARGB(255, 15, 169, 240).withOpacity(0.5)
                  ])),
              child: this.child,
            ),
          ],
        ),
      ),
    );
  }
}
