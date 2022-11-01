import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otida_test/home/widgets/widgets.dart';

import '../utilis/utilis.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 84,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(33),
          ),
        ),
        flexibleSpace: const SafeArea(
          child: HomeAppBar(),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Categories(),
        ),
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 41,
          ),
          Header(
            title: "Upcoming Events",
          ),
          SizedBox(
            height: 10,
          ),
          Events(),
          SizedBox(
            height: 5,
          ),
          ReferralCard(),
          SizedBox(
            height: 24,
          ),
          Header(
            title: "Nearby You",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: SvgPicture.asset(
          "assets/images/add_box.svg",
          height: 24,
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            BarButton(
              icon: "assets/images/compass.svg",
              title: "Explore",
              color: primaryColor,
            ),
            BarButton(
              icon: "assets/images/Calendar.svg",
              title: "Events",
              color: barColor,
            ),
            SizedBox(
              width: 40,
            ),
            BarButton(
              icon: "assets/images/Location.svg",
              title: "Events",
              color: barColor,
            ),
            BarButton(
              icon: "assets/images/Profile.svg",
              title: "Profile",
              color: barColor,
            ),
          ],
        ),
      ),
    );
  }
}
