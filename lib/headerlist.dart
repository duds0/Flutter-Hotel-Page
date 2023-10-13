import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeaderList extends StatelessWidget {
  HeaderList({super.key, required this.text, required this.onPress});

  String text;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff797979), width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: TextButton(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.only(left: 16, right: 16)),
        onPressed: () => onPress(),
        child: Text(
          text,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
