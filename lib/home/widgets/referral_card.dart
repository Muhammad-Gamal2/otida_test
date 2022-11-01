import 'package:flutter/material.dart';

import '../../utilis/colors.dart';

class ReferralCard extends StatelessWidget {
  const ReferralCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 127,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0x2900F8FF),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08ABC2EB),
            offset: Offset(0, 5),
            blurRadius: 50,
          ),
        ],
      ),
      margin: const EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: width * 0.65,
              ),
              child: Image.asset(
                "assets/images/prize.png",
                height: 155,
              ),
            ),
          ),
          Positioned(
            top: 13,
            left: 18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Invite your friends",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 18,
                      height: 1.9,
                      fontWeight: FontWeight.w500,
                      color: darkMoveColor),
                ),
                const Text(
                  "Get \$20 for ticket",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 13,
                      height: 1.3,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff484D70)),
                ),
                const SizedBox(
                  height: 13,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff00F8FF),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.only(
                      top: 4, bottom: 5, left: 14, right: 20),
                  child: const Text("INVITE",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 12,
                          height: 1.9,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
