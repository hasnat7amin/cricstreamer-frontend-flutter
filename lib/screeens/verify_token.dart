import 'dart:async';

import 'package:cricstreamer/screeens/change_password.dart';
import 'package:flutter/material.dart';

import '../constants/box_decoration.dart';
import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../widgets/button.dart';
import '../widgets/circle_logo.dart';
import '../widgets/size_box.dart';
import '../widgets/text_input.dart';
import 'package:percent_indicator/percent_indicator.dart';


class VerifyToken extends StatefulWidget {
  const VerifyToken({Key? key}) : super(key: key);

  @override
  State<VerifyToken> createState() => _VerifyTokenState();
}

class _VerifyTokenState extends State<VerifyToken> {
  final TextEditingController email = TextEditingController();
  bool isCompleted = false;
  double percent = 0.0;
  int time = 1;
  late Timer timer;

  @override
  void initState() {
    // Timer timer;
    timer = Timer.periodic(Duration(seconds:1),(_){
      setState(() {
        percent+=1.66666667;
        time+=1;
        if(time >= 60){
          isCompleted = true;
          timer.cancel();
          // percent=0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: white_light,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(left: 18, right: 18, bottom: 30),
                height: MediaQuery.of(context).size.height -
                    (MediaQuery.of(context).size.height / 7.7),
                width: MediaQuery.of(context).size.width,
                decoration: boxDecoration1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Verify Your Identity",
                      style: green_style1,
                    ),
                    SizeBox(
                      height: 48,
                    ),
                    // ignore: unnecessary_new
                    new CircularPercentIndicator(
                      radius: 40.0,
                      lineWidth: 8.0,
                      percent: ((percent.round())/100).toDouble(),
                      center: new Text(
                        time.toString()+" sec",
                        style: gray_style2,
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: green_light,
                    ),
                    SizeBox(
                      height: 38,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Enter the code that you recieved on your email.",
                        style: gray_style3,
                      ),
                    ),
                    SizeBox(
                      height: 18,
                    ),
                    TextInput(
                      textlabel: "OTP Code",
                      iconlabel: "assests/images/password.png",
                      controller: email,
                      keyboardType: true,
                    ),
                    SizeBox(
                      height: 18,
                    ),
                    if(isCompleted)
                      Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Dont't recieve code?",
                        style: gray_style3,
                      ),
                    ),
                    SizeBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),
                    Button(title: "Submit", func: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
                    }),
                  ],
                ),
              ),
              Container(
                height: (MediaQuery.of(context).size.height / 7.7),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Sign in with different account.", style: gray_style2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
