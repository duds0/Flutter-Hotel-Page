import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  Buttons(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.text});

  IconData icon;
  String text;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //color: Colors.white,
      child: TextButton(
        onPressed: () => onPress(),
        child: Column(
          children: [
            Icon(
              icon,
              color: const Color(0xff0F969C),
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
