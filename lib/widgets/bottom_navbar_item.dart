import 'package:flutter/material.dart';
import 'package:mental_health_project/models/bottomnavbar.dart';
import 'package:mental_health_project/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final BottomNavbar bottomnavbar;
  BottomNavbarItem(this.bottomnavbar);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          bottomnavbar.imgUrl,
          width: 41,
          height: 51,
        ),
        Spacer(),
        bottomnavbar.isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: background2Color,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(1000))),
              )
            : Container(),
      ],
    );
  }
}
