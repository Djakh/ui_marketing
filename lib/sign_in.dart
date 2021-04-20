import 'package:flutter/material.dart';
import 'package:ui_marketing/sign_up.dart';
import 'package:ui_marketing/widgets.dart';


class SignIn extends StatelessWidget {
  static const routeName = "/sign_in";
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
                    widget.textOnTop("Welcome to Layfuu", "sign in to continue"),
                    widget.textField("Your email", false, Icon(Icons.email_outlined)),
                    SizedBox(
                      height: 5,
                    ),
                    widget.textField("Password", true, Icon(Icons.lock_outline_rounded)),
                    SizedBox(
                      height: 15,
                    ),
                    //Sign in Button
                   widget.signFlatButton(context),
                    SizedBox(
                      height: 20,
                    ),
                    widget.rowDivider(),

                    SizedBox(
                      height: 20,
                    ),
                  widget.logInWith("googleLogo1.jpg"),
                   SizedBox(
                      height: 5,
                    ),
                    widget.logInWith("faceLogo.png"),
                  widget.textButton(context, SignUp.routeName, "forgot Password?", ""),
                widget.textButton(context, SignUp.routeName, "Register", "Don`t have an account? "),
                    
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
