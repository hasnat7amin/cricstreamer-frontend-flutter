import 'package:cricstreamer/constants/box_shadows.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Button extends StatelessWidget {
  late String title;
  final VoidCallback func;
  Button({Key? key,required this.title, required this.func}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            shadow2
          ],
          gradient: const LinearGradient(colors: [
            green_dark,
            green_light,
          ]),
        ),
        child: Text(
          title,
          style: TextStyle(color: white),
        ),
      ),
    );
  }
}
