import 'package:flutter/material.dart';

final ButtonStyle flatButtonStyle=TextButton.styleFrom(
primary: Colors.black87,
minimumSize: const Size(50, 50),
padding: const EdgeInsets.symmetric(horizontal: 16),
shape: const RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
),
);