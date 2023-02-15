import 'package:cricstreamer/constants/box_decoration.dart';
import 'package:cricstreamer/constants/text_styles.dart';
import 'package:cricstreamer/screeens/reset_password.dart';
import 'package:cricstreamer/widgets/button.dart';
import 'package:cricstreamer/widgets/circle_logo.dart';
import 'package:cricstreamer/widgets/text_input.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/size_box.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: white_light,
          child: Column(
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
                      "Login",
                      style: green_style1,
                    ),
                    SizeBox(
                      height: 22,
                    ),
                    CircleLogo(
                      image: "assests/images/username.png",
                    ),
                    SizeBox(
                      height: 72,
                    ),
                    TextInput(
                        textlabel: "Email/Phone",
                        iconlabel: "assests/images/username.png",
                        controller: username,
                    ),
                    SizeBox(
                      height: 18,
                    ),
                    TextInput(
                        textlabel: "Password",
                        iconlabel: "assests/images/password.png",
                        controller: password,
                    ),
                    SizeBox(
                      height: 18,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot Password?",
                        style: gray_style3,
                      ),
                    ),
                    SizeBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),
                    Button(title: "Login", func: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
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
