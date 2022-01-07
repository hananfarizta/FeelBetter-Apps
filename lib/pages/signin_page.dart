import 'package:flutter/material.dart';
import 'package:mental_health_project/pages/home_page.dart';
import 'package:mental_health_project/pages/signup1_page.dart';
import 'package:mental_health_project/theme.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background2Color,
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Welcome Back',
                  style: blackTextStyle.copyWith(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text('Login to continue your journey',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    )),
              ),
              SizedBox(
                height: 41,
              ),
              Image.asset(
                'assets/login2.png',
                height: 225,
                width: 232,
              ),
              SizedBox(
                height: 21,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Email',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    labelText: 'Enter your email',
                    labelStyle: greyTextStyle.copyWith(fontSize: 12),
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(10), // Added this
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Password',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    labelText: 'Enter your password',
                    labelStyle: greyTextStyle.copyWith(fontSize: 12),
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(10), // Added this
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: edge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Forget Password?',
                        style: greenTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 51,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Container(
                  height: 55,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    color: blueColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Login',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have account? ',
                    style: greyTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage1()));
                    },
                    child: Text(
                      'Sign Up',
                      style: blueTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              )
            ],
          )),
    );
  }
}
