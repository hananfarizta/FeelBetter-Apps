import 'package:flutter/material.dart';
import 'package:mental_health_project/pages/input_code.dart';
import 'package:mental_health_project/theme.dart';

class InputPhone extends StatelessWidget {
  const InputPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background2Color,
        body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
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
                  'Enter your\nmobile number',
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
                  'Insert your phone number to continue',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(children: [
                    Text(
                      '+62',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/Arrow Down 1.png',
                        width: 18,
                        height: 11,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Phone Number",
                            hintStyle: greyTextStyle.copyWith(fontSize: 18)),
                      ),
                    )
                  ])),
              SizedBox(
                height: 350,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Container(
                  height: 55,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InputCode()));
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
            ],
          ),
        ));
  }
}
