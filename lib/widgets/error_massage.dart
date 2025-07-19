import 'package:flutter/material.dart';

class errorMassage extends StatelessWidget {
  const errorMassage({super.key, required this.massege});

  final String massege;
  @override
  Widget build(BuildContext context) {
    return Text(massege);
  }
}