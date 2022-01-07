import 'package:flutter/material.dart';
import 'package:mental_health_project/models/home.dart';
import 'package:mental_health_project/theme.dart';

class HomeCard extends StatelessWidget {
  final Home home;

  HomeCard(this.home);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: whiteColor,
          ),
          width: 315,
          height: 445,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      home.imgUrl1,
                      width: 50,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          home.name,
                          style: blackTextStyle.copyWith(fontSize: 14),
                        ),
                        Text(
                          home.tanggal,
                          style: greyTextStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      home.follow,
                      style: orangeTextStyle.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(home.line1, style: black2TextStyle.copyWith(fontSize: 10)),
                SizedBox(
                  height: 6,
                ),
                Image.asset(
                  home.imgUrl2,
                  width: 275,
                  height: 175,
                ),
                SizedBox(
                  height: 9.97,
                ),
                Image.asset(
                  'assets/Line 1.png',
                  width: 275,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  home.artikel,
                  style: orangeTextStyle.copyWith(fontSize: 11),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  home.line2,
                  style: blackTextStyle.copyWith(fontSize: 10),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  home.waktu,
                  style: greyTextStyle.copyWith(fontSize: 9),
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '3200 Saved',
                      style: black2TextStyle.copyWith(fontSize: 11),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Image.asset(
                      'assets/repeat.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/frame.png',
                      width: 24,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
