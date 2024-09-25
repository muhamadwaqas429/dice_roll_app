import 'dart:math';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  final Color color1;
  final Color color2;

  GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
  });

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var activeDice = 'assets/images/dice-1.png';

  void diceRoll() {
    var diceRoll = Random().nextInt(6) + 1;  // Generates random number between 1 and 6
    setState(() {
      activeDice = 'assets/images/dice-$diceRoll.png';  // Updates dice image based on roll
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            widget.color1,
            widget.color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              activeDice,
              width: 200,
            ),
          ),
          TextButton(
            onPressed: diceRoll,
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: TextStyle(fontSize: 28),
            ),
            child: const Text(
              'Roll Dice',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
