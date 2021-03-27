import 'package:flutter/material.dart';
import 'package:ui_marketing/sign_up.dart';

class Widgets {
  Widget textOnTop(String string1, String string2) {
    return Center(
      child: Column(
        children: [
          Text(
            "$string1",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
            color: Colors.purpleAccent[900]
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "$string2",
            style: TextStyle(fontSize: 14, color: Colors.grey[400]),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  Widget signFlatButton() {
    return FlatButton(
      height: 50,
      color: Colors.lightBlue[400],
      child: Text(
        "Sign in",
        style: TextStyle(fontSize: 20),
      ),
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(5)),
      onPressed: () {},
      padding: const EdgeInsets.all(15),
      textColor: Colors.white,
    );
  }

  Widget textField(String string, bool boolean, Icon icon) {
    return TextField(
      obscureText: boolean,
      style: TextStyle(fontSize: 18, color: Colors.black54),
      decoration: InputDecoration(
          prefixIcon: icon,
          hintText: string,
          filled: true,
          contentPadding: const EdgeInsets.all(15),
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(5)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(5))),
    );
  }

  Widget rowDivider() {
    return Row(children: <Widget>[
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: Divider(
              color: Colors.black,
              height: 36,
            )),
      ),
      Text("OR"),
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: Divider(
              color: Colors.black,
              height: 36,
            )),
      ),
    ]);
  }

  Widget textButton(BuildContext context, String routname, String stringButton, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$title",
          style: TextStyle(fontSize: 14.0, color: Colors.grey[400]),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, routname);
          },
          child: Text(
            "$stringButton",
            style: TextStyle(fontSize: 14, color: Colors.blue),
          ),
        ),
      ],
    );
  }

  Widget logInWith(String string) {
    return FlatButton(
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/$string",
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 80.0),
            child: Text(
              "Login with Google",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[300]),
          borderRadius: BorderRadius.circular(5)),
      onPressed: () {},
    );
  }
}
