import 'dart:ui';

import 'package:flutter/material.dart';

class CardDark extends StatelessWidget {
  final Widget child;
  const CardDark({Key? key, required this.child}) : super(key: key);

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
            color: Colors.black26,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: -5,
              top: -5,
              child: Container(
                width: 30,
                height: 30,
                decoration : BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 214, 255, 251).withOpacity(0.4)
                )
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration : BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.teal.withOpacity(0.7)
              )
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 64, 77, 107).withOpacity(0.3),
                ),
                child: this.child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}