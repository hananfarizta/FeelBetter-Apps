import 'package:flutter/material.dart';
import 'package:mental_health_project/pages/on_boarding1_page.dart';
import 'package:mental_health_project/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/foto.png"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Image.asset(
                'assets/logo.png',
                width: 138,
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OnBoarding1()));
                },
                color: Colors.transparent,
                child: Text('FeelBetter',
                    style: blueTextStyle.copyWith(
                      fontSize: 48,
                    )),
              )
            ],
          )),
    );
  }
}
