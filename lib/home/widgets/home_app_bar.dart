import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/images/menu.svg",
                  width: 24,
                  height: 20,
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          'Current Location',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Color(0xffFCFCFC),
                      )
                    ],
                  ),
                  const Text(
                    'New Yourk, USA',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF4F4FE)),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  backgroundColor: const Color(0x1AFFFFFF),
                  radius: 18,
                  child: SvgPicture.asset(
                    "assets/images/notification.svg",
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: " | Search...",
              hintStyle: const TextStyle(
                color: Color(0x4DFFFFFF),
                fontSize: 20.33,
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: SvgPicture.asset(
                "assets/images/search.svg",
              ),
              prefixIconConstraints: const BoxConstraints(
                minWidth: 24,
                minHeight: 24,
              ),
              suffixIconConstraints: const BoxConstraints(
                minWidth: 75,
                minHeight: 32,
              ),
              suffixIcon: Container(
                decoration: const BoxDecoration(
                  color: Color(0x1AFFFFFF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset("assets/images/filter.svg"),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'Filters',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
