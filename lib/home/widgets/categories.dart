import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/models.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      transform: Matrix4.translationValues(0, 20, 0),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(33),
        ),
      ),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: Category.samples.length,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          separatorBuilder: (context, index) => const SizedBox(
                width: 11.28,
              ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                color: Color(Category.samples[index].color),
                borderRadius: BorderRadius.circular(20.96),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16.49),
              child: Row(
                children: [
                  SvgPicture.asset(Category.samples[index].icon),
                  const SizedBox(
                    width: 8.31,
                  ),
                  Text(Category.samples[index].name,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ],
              ),
            );
          }),
    );
  }
}
