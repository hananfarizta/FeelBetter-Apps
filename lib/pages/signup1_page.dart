import 'package:flutter/material.dart';
import 'package:mental_health_project/pages/input_phone.dart';
import 'package:mental_health_project/pages/signin_page.dart';
import 'package:mental_health_project/theme.dart';

class SignupPage1 extends StatelessWidget {
  const SignupPage1({Key? key}) : super(key: key);

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
                  'Create Your Account',
                  style: blackTextStyle.copyWith(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text('Create your account to start journey',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    )),
              ),
              SizedBox(
                height: 41,
              ),
              Image.asset(
                'assets/login1.png',
                height: 225,
                width: 232,
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Full Name',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "First Name",
                          hintStyle: greyTextStyle.copyWith(fontSize: 12),
                          isDense: true,
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "Last name",
                          hintStyle: greyTextStyle.copyWith(fontSize: 12),
                          isDense: true,
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                )
              ]),
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
                height: 30,
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
                              builder: (context) => InputPhone()));
                    },
                    color: blueColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Create Account',
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
                    'Already have account? ',
                    style: greyTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninPage()));
                    },
                    child: Text(
                      'Sign In',
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
