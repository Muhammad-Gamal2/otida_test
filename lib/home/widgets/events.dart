import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utilis/utilis.dart';

class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemBuilder: (context, index) {
            return Container(
              width: 237,
              height: 255,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0F505588),
                    offset: Offset(0, 8),
                    blurRadius: 30,
                  ),
                ],
              ),
              padding:
                  const EdgeInsets.only(top: 9, bottom: 17, left: 9, right: 10),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/Mask Group1.png',
                        height: 131,
                      ),
                      Positioned(
                        left: 8,
                        top: 8,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xB3FFFFFF),
                          ),
                          padding: const EdgeInsets.all(6),
                          child: RichText(
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '10',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: redColor),
                                ),
                                TextSpan(
                                  text: '\nJUNE',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: redColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 8,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xB3FFFFFF),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: SvgPicture.asset("assets/images/bookmark.svg"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "International Band Music Festival",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 56,
                        height: 24,
                        color: Colors.white,
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerRight,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                    'assets/images/Oval Copy.png'), // Provide your custom image
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12,
                                child: Image.asset(
                                    'assets/images/Oval Copy.png'), // Provide your custom image
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                    'assets/images/Oval Copy.png'), // Provide your custom image
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "+20 Going",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: moveColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/images/map-pin.svg"),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "36 Guild Street London, UK ",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: purpleColor),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
