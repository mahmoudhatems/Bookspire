import 'package:bookspire/core/utils/strings.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required Animation<Offset> slidingAnimation,
  }) : _slidingAnimation = slidingAnimation;

  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: _slidingAnimation, //  SlideTransition
            child: Text(
                textAlign: TextAlign.center,
                StringManager.appName,
                style: Styles.styleBoldText34darkBlueJua),
          );
        });
  }
}
