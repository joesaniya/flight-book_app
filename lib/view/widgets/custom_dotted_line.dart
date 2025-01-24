import 'package:flutter/material.dart';

class CustomDottedLine extends StatelessWidget {
  final Color color;

  const CustomDottedLine({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        300 ~/ 10,
        (index) => Expanded(
          child: Container(
            color: index % 2 == 0 ? Colors.transparent : color,
            height: 2,
          ),
        ),
      ),
    );
  }
}
