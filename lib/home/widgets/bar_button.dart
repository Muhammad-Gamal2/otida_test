import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarButton extends StatelessWidget {
  const BarButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.color});

  final String icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          const SizedBox(
            height: 2,
          ),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
