import 'dart:ui';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final Widget child;
  const CardItem({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: -10,
              right: -10,
              child: Container(
                width: 30,
                height: 30,
                decoration : BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 214, 255, 251).withOpacity(0.4)
                )
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 64, 77, 107).withOpacity(0.3),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 64, 77, 107).withOpacity(0.3),
                        Color.fromARGB(255, 23, 35, 63).withOpacity(0.3),
                      ],
                    )
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