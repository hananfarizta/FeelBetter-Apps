import 'package:flutter/material.dart';
import 'package:mental_health_project/pages/success_screen.dart';
import 'package:mental_health_project/theme.dart';

class InputCode extends StatelessWidget {
  const InputCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background2Color,
        body: SafeArea(
            bottom: false,
            child: ListView(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: edge, vertical: edge),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/Arrow Left 1.png',
                          height: 16,
                          width: 9,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Text(
                  'Enter code sent\nto your phone',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Text(
                  'Already sent to number (+62)89503889907',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 350,
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
                              builder: (context) => SuccessPage()));
                    },
                    color: blueColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
