import 'package:flutter/material.dart';
import 'package:full_app/widget/widget.dart';


class Header extends StatelessWidget {
  const Header({super.key,required this.name, this.color});
  final String ? name;
  final color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30,),
        textWidget(
          text:name??"",
          fontWeight: FontWeight.bold,
          fontsize: 30.0,
          color: color,
        )
      ],
    );
  }
}