import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  const Emoji({Key? key, required this.emoji, required this.text})
      : super(key: key);
  final String emoji;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue.shade600),
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
