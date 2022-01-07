import 'package:flutter/material.dart';
import 'package:mental_health_project/models/bottomnavbar.dart';
import 'package:mental_health_project/models/home.dart';
import 'package:mental_health_project/theme.dart';
import 'package:mental_health_project/widgets/bottom_navbar_item.dart';
import 'package:mental_health_project/widgets/home_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background2Color,
        body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: edge,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Pagi,',
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Marcella Widianti',
                          style: blackTextStyle.copyWith(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/setting-4.png',
                        width: 30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  HomeCard(Home(
                    1,
                    'assets/Ellipse 1.png',
                    'assets/mental_health.png',
                    'Hanna Montana',
                    'ARTIKEL',
                    'Follow',
                    'Mental health adalah salah satu hal yang wajib kita\nketahui dan sadari sejak dini gejalanya.',
                    'Apakah mental health adalah salah satu isu penting\nyang wajib kita ketahui ?',
                    '26 Nov at 15:06 PM',
                    '3 minutes to read',
                  )),
                  SizedBox(
                    height: 23,
                  ),
                  HomeCard(Home(
                    2,
                    'assets/Ellipse 2.png',
                    'assets/mental_health.png',
                    'Mansur Sudiro',
                    'ARTIKEL',
                    'Follow',
                    'Pentingnya mengenali gejala gangguan mental\nhealth pada anak usia remaja.',
                    'Apa saja gejala gangguan mental health pada anak\nusia remaja?',
                    '26 Nov at 13:05 PM',
                    '5 minutes to read',
                  )),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: Container(
          height: 85,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: background2Color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarItem(BottomNavbar(1, true, 'assets/Home.png')),
              BottomNavbarItem(BottomNavbar(2, false, 'assets/Search.png')),
              BottomNavbarItem(BottomNavbar(3, false, 'assets/Saved.png')),
              BottomNavbarItem(BottomNavbar(4, false, 'assets/Chats.png')),
              BottomNavbarItem(BottomNavbar(5, false, 'assets/Profile.png')),
            ],
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}
