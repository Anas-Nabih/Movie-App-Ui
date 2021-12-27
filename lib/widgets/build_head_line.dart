import 'package:flutter/material.dart';
Padding buildHeadLine({String text}) {
  return Padding(
    padding: const EdgeInsets.only(left: 12),
    child: Text(text,
      style: TextStyle(
        color: Colors.orange,
        fontWeight: FontWeight.bold,
        fontSize: 26,
      ),
    ),
  );
}