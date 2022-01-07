import 'package:flutter/material.dart';
import 'package:mental_health_project/pages/signup1_page.dart';
import 'package:mental_health_project/pages/signup1_page.dart';
import 'package:mental_health_project/theme.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          bottom: false,
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 70),
              child: Image.asset(
                'assets/onboarding3.png',
                width: 314,
                height: 326,
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 480,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25)),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Self Healing and\nGetting Peace',
                            style: blackTextStyle.copyWith(
                              fontSize: 24,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Tempat terbaik bagimu untuk self healing\ndan mendapat ketenangan. Mari mulai\npengalaman mu bersama kami',
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/titik.png',
                            height: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/titik.png',
                            height: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/lonjong.png',
                            width: 40,
                            height: 10,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 40,
                              width: 138,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignupPage1()));
                                },
                                color: blueColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  'Next',
                                  style: whiteTextStyle.copyWith(fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}
