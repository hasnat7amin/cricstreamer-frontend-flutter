import 'package:cricstreamer/constants/box_shadows.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Button extends StatelessWidget {
  late String title;
  final VoidCallback func;
  List<Color> colors;
  String icon;
  double iconWidth;
  double iconHeight;
  Button(
      {Key? key,
      required this.title,
      required this.func,
      this.colors = const [
        green_dark,
        green_light,
      ],
        this.icon = "null",
        this.iconHeight = 17,
        this.iconWidth = 17,
      })
      : super(key: key);

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
          boxShadow: [shadow2],
          gradient: LinearGradient(colors: colors),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon == "null"?Padding(padding: EdgeInsets.zero):Padding(
              padding: const EdgeInsets.all(17.0),
              child: Image.asset(icon,width: iconHeight,height: iconHeight,),
            ),
            Text(
              title,
              style: TextStyle(color: white),
            ),
          ],
        ),
      ),
    );
  }
}
