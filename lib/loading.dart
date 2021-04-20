import 'package:flutter/material.dart';
import 'package:ui_marketing/sign_in.dart';


class Loading extends StatefulWidget {
  static const routeName = "/loading";
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
void pushToLogIn() async{
await Future.delayed(Duration(seconds: 3), () {
Navigator.pushReplacementNamed(context, SignIn.routeName);
});  
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    pushToLogIn();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[300],
      body: Center (child: Image.asset(
                "assets/logo2.jpg",
                height: 80,
              ),),
      
    );
  }
}