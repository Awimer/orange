import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orange/presentation/constants/constents.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../presentation/constants/app_assets.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image.asset(
                odcImagePng,
                height: MediaQuery.of(context).size.height / 11,
                width: MediaQuery.of(context).size.width / 1.5,
                fit: BoxFit.cover,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: LinearPercentIndicator(
                  animation: true,
                  lineHeight: 7.0,
                  animationDuration: 7000,
                  percent: 1,
                  barRadius: const Radius.circular(50),
                  progressColor: primaryColor,
                  onAnimationEnd: ()
                  {
                    accessToken == ""
                        ? Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                          (Route<dynamic> route) => false,
                    )
                        : Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                          (Route<dynamic> route) => false,
                    );
                  },
                ),
              ),
            ],
      ),
    );
  }
}
