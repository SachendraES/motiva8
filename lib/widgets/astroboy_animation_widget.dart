import 'package:flutter/material.dart';
import 'dart:ui';

class AstroBoyAnimation extends StatefulWidget {
  @override
  _AstroBoyAnimationState createState() => _AstroBoyAnimationState();
}

class _AstroBoyAnimationState extends State<AstroBoyAnimation>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<double>(begin: 0, end: -50).animate(animationController)
      ..addListener(() {
        setState(() {});
      });

    animationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0.7),
      child: Transform.translate(
        offset: Offset(0, animation.value),
        child: Container(
          height: 250,
          width: 170,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/astroBoyBalloon.png'),
          )),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
