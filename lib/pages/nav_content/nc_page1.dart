import 'package:flutter/material.dart';

class NcPage1 extends StatelessWidget {
  //const NcPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Página 1',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          ),
      )
    );
  }
}