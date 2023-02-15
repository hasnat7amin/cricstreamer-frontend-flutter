import 'package:cricstreamer/constants/box_decoration.dart';
import 'package:cricstreamer/screeens/verify_token.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../widgets/button.dart';
import '../widgets/circle_logo.dart';
import '../widgets/size_box.dart';
import '../widgets/text_input.dart';


class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController email = TextEditingController();

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
                      "Reset Password",
                      style: green_style1,
                    ),
                    SizeBox(
                      height: 22,
                    ),
                    CircleLogo(
                      image: "assests/images/password.png",
                    ),
                    SizeBox(
                      height: 71,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "An email with the reset code will be send to the email you will provide below.",
                        style: gray_style3,
                      ),
                    ),
                    SizeBox(
                      height: 18,
                    ),
                    TextInput(
                      textlabel: "Email",
                      iconlabel: "assests/images/email.png",
                      controller: email,
                    ),
                    SizeBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),
                    Button(title: "Next", func: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyToken()));
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
                    Text("Don't have an account!", style: gray_style3),
                    Text("Create Account", style: gray_style1),
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
