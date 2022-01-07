import 'package:flutter/material.dart';
import 'package:mental_health_project/pages/signin_page.dart';
import 'package:mental_health_project/theme.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background2Color,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 96,
                ),
                child: Image.asset(
                  'assets/pana.png',
                  width: 245.1,
                  height: 266.3,
                ),
              ),
              SizedBox(
                height: 43.7,
              ),
              Text(
                'Congratulations',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'You have successfully registered\nNext, please re-login to enter the\napplication',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Container(
                  height: 55,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninPage()));
                    },
                    color: blueColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
