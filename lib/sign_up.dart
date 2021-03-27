import 'package:flutter/material.dart';
import 'package:ui_marketing/sign_in.dart';
import 'package:ui_marketing/widgets.dart';
class SignUp extends StatelessWidget {
  static const routeName = "/sign_up";
   Widgets widget = new Widgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: Colors.white,
            width: double.infinity,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      "assets/logo1.jpg",
                      height: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                   widget.textOnTop("Let`s Get Started", "Create an new account"),
                    widget.textField("Full name", false, Icon(Icons.person_outline)),
                    SizedBox(
                      height: 5,
                    ),
                         widget.textField("Your Email", false, Icon(Icons.email_outlined)),
                    SizedBox(
                      height: 5,
                    ),
                    widget.textField("Password", true, Icon(Icons.lock_outline_rounded)),
                    SizedBox(
                      height: 5,
                    ),
                    widget.textField("Password again", true, Icon(Icons.lock_outline_rounded)),
                    SizedBox(
                      height: 15,
                    ),
                   widget.signFlatButton (),
                 
                widget.textButton(context, SignIn.routeName, "Sign in", "Do you have an account? "),
                    
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
