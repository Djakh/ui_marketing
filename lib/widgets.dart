import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:ui_marketing/size_config.dart';

import 'head.dart';

class Widgets {
  Widget textOnTop(String string1, String string2) {
    return Center(
      child: Column(
        children: [
          Text(
            "$string1",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.purpleAccent[900]),
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

  Widget signFlatButton(BuildContext context) {
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
      onPressed: () {
        Navigator.pushNamed(context, Head.routeName);
      },
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

  Widget textButton(BuildContext context, String routname, String stringButton,
      String title) {
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

  static Widget getAppSearchBar() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: TextField(
            style: TextStyle(fontSize: 18, color: Colors.black54),
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Colors.lightBlue,
                ),
                hintText: "Search Product",
                filled: true,
                contentPadding: const EdgeInsets.all(15),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue),
                    borderRadius: BorderRadius.circular(5)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[300]),
                    borderRadius: BorderRadius.circular(5))),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.favorite_border_outlined,
          size: 30,
          color: Colors.grey,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.notifications_none_rounded, size: 30, color: Colors.grey)
      ],
    );
  }

  static Widget getMainAsset(
      String asset, String mainString, String definitionString) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.w2 * 6),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(asset)),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 61, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainString,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.w2 * 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: SizeConfig.w2 * 15,
                ),
                Text(definitionString,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.w2 * 7.5,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  static Widget getPage0Card(
      String asset, double left, double top, double right, double bottom) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: Container(
        height: 48.287 * SizeConfig.h, //330,
        width: 46.183 * SizeConfig.w, //187
        child: Card(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                2.916 * SizeConfig.w /*w 12*/,
                2.048 * SizeConfig.h /*h 14*/,
                2.916 * SizeConfig.w /*w 12*/,
                1.755 * SizeConfig.h /*h 12*/),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                      height: 21.949 * SizeConfig.h,
                      width: 36.460 * SizeConfig.w,
                      child: Image.asset(asset)),
                ),
                SizedBox(
                  height: 1.463 * SizeConfig.h,
                ),
                Text(
                  "Nike Air Max 270 \nReact ENG",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2.194 * SizeConfig.h,
                ),
                SmoothStarRating(
                    allowHalfRating: false,
                    onRated: (v) {},
                    starCount: 5,
                    rating: 4,
                    size: 2.926 * SizeConfig.h,
                    isReadOnly: true,
                    color: Colors.yellow[600],
                    borderColor: Colors.grey,
                    spacing: 0.0),
                SizedBox(
                  height: 2.926 * SizeConfig.h,
                ),
                Text("\$299,43",
                    style: TextStyle(
                        color: Colors.lightBlue, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 1.463 * SizeConfig.h,
                ),
                Row(
                  children: [
                    Text("\$534,33",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 1.755 * SizeConfig.h)),
                    SizedBox(
                      width: 2.430 * SizeConfig.w,
                    ),
                    Text("24% Off",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 1.755 * SizeConfig.h)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget getAvatarPage1Icon(Icon icon, String name) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.w2 * 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: SizeConfig.w2 * 18.5,
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: SizeConfig.w2 * 18,
                child: icon),
          ),
          SizedBox(
            height: SizeConfig.h2 * 3.5,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.grey[400]),
          )
        ],
      ),
    );
  }

  static Widget getPage3And4FlatButton(double sizeHeight, double left,
      double right, String text, bool howToPlace) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          left, SizeConfig.h2 * 6, right, SizeConfig.h2 * 3),
      child: FlatButton(
        height: sizeHeight,
        minWidth: SizeConfig.w2 * 240,
        color: Colors.lightBlue[400],
        child: Align(
          alignment: howToPlace ? Alignment.centerLeft : Alignment.center,
          child: Text(
            text,
            style: TextStyle(
                fontSize: SizeConfig.w2 * 8.5, fontWeight: FontWeight.bold),
          ),
        ),
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(5)),
        onPressed: () {},
        padding: EdgeInsets.all(SizeConfig.w2 * 7.5),
        textColor: Colors.white,
      ),
    );
  }

  static Widget getPage3MainAssets() {
    return Padding(
      padding: EdgeInsets.fromLTRB(SizeConfig.h2 * 6, SizeConfig.w2 * 3,
          SizeConfig.h2 * 6, SizeConfig.w2 * 3),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/sneaker3Page2.jpg",
               
              )),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.h2 * 18.5, horizontal: SizeConfig.w2 * 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Super Flash Sale \n50 Off% ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.h2 * 13.5,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: SizeConfig.w2 * 25,
                ),
                Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          height: SizeConfig.h2 * 20,
                          width: SizeConfig.w2 * 20,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            "08",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.w2 * 8.5,
                                fontWeight: FontWeight.bold),
                          )),
                        )),
                    Padding(
                      padding: EdgeInsets.all(SizeConfig.w2 * 2),
                      child: Text(":",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.w2 * 8.5,
                              fontWeight: FontWeight.bold)),
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          height: 40,
                          width: SizeConfig.w2 * 20,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            "34",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.w2 * 8.5,
                                fontWeight: FontWeight.bold),
                          )),
                        )),
                    Padding(
                      padding: EdgeInsets.all(SizeConfig.w2 * 2),
                      child: Text(":",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.w2 * 8.5,
                              fontWeight: FontWeight.bold)),
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          height: 40,
                          width: SizeConfig.w2 * 20,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            "52",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.w2 * 8.5,
                                fontWeight: FontWeight.bold),
                          )),
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  static Widget getOutlinePage2Container(String asset, bool checkFavorite) {
    return Padding(
      padding: EdgeInsets.fromLTRB(SizeConfig.w2 * 6, SizeConfig.h2 * 6,
          SizeConfig.w2 * 6, SizeConfig.h2 * 3),
      child: Container(
        height: SizeConfig.h2 * 62.5,
        width: SizeConfig.w2 * 192,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.grey[300])),
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.w2 * 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(asset),
              ),
              SizedBox(
                width: SizeConfig.w2 * 6,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Nike Air Zoom Pegagus \n36 Miami",
                        style: TextStyle(
                            fontSize: SizeConfig.w2 * 6,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo[900]),
                      ),
                      SizedBox(
                        width: SizeConfig.w2 * 11,
                      ),
                      checkFavorite
                          ? Icon(Icons.favorite_rounded,
                              color: Colors.red, size: SizeConfig.w2 * 15)
                          : Icon(Icons.favorite_outline_outlined,
                              color: Colors.grey, size: SizeConfig.w2 * 15),
                      SizedBox(
                        width: SizeConfig.w2 * 3.5,
                      ),
                      Icon(Icons.delete_outline,
                          color: Colors.grey, size: SizeConfig.w2 * 15)
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.h2 * 12.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "\$299,43",
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: SizeConfig.w2 * 6),
                      ),
                      SizedBox(
                        width: SizeConfig.w2 * 26.0,
                      ),
                      Container(
                        height: SizeConfig.h2 * 12.5,
                        width: SizeConfig.w2 * 21,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "—",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        height: SizeConfig.h2 * 12.5,
                        width: SizeConfig.w2 * 21,
                        color: Colors.indigo[50],
                        child: Center(child: Text("1")),
                      ),
                      Container(
                        height: SizeConfig.h2 * 12,
                        width: SizeConfig.w2 * 21,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "+",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  static Widget getPage2TextField() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Cupon Code",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  isDense: true,
                  contentPadding: EdgeInsets.all(19),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue),
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300]),
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
          FlatButton(
            height: 56,
            color: Colors.lightBlue[400],
            child: Text(
              "Apply",
              style: TextStyle(fontSize: 14),
            ),
            shape: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(5)),
            onPressed: () {},
            padding: const EdgeInsets.all(15),
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
