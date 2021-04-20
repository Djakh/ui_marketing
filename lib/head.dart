import 'package:flutter/material.dart';
import 'package:ui_marketing/pages/page0.dart';
import 'package:ui_marketing/pages/page1.dart';
import 'package:ui_marketing/pages/page2.dart';
import 'package:ui_marketing/pages/page3.dart';
import 'package:ui_marketing/pages/page4.dart';
import 'package:ui_marketing/size_config.dart';
import 'package:ui_marketing/widgets.dart';


class Head extends StatefulWidget {
  static const routeName = "/head";

  @override
  _HeadState createState() => _HeadState();
}

class _HeadState extends State<Head> {
    List<String> listString = ["", "", "Your Cart", "Offer", "Account"];
static int _currentIndex = 0; 
  String currentAppBarString = "";

Widget getPage () {

switch (_currentIndex) {
  case 0:
    return Page0();
    break;
    case 1:
    return Page1();
    break;
    case 2:
    return Page2();
    break;
    case 3:
    return Page3();
    break;
    case 4:
    return Page4();
    break;
  default:
  return Page0();
}


}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(SizeConfig.h2 * 31.5),
              child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
          title: _currentIndex < 2 ? Widgets.getAppSearchBar() : Text(currentAppBarString,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.h2 * 10
          ),
          )
        ),
      ),

//BODY
body: getPage(),
//NavigationBar

bottomNavigationBar: BottomNavigationBar (
  type: BottomNavigationBarType.fixed,
  currentIndex: _currentIndex,
  iconSize: SizeConfig.w2 * 17.5,
  backgroundColor: Colors.white,
  
  items: [
    BottomNavigationBarItem (icon: Icon(Icons.home_outlined),
    title: Text("Home"),
    ),
        BottomNavigationBarItem (icon: Icon(Icons.search_outlined),
    title: Text("Explore"),
    ),
        BottomNavigationBarItem (icon: Icon(Icons.shopping_cart_outlined),
    title: Text("Cart"),
    ),
        BottomNavigationBarItem (icon: Icon(Icons.local_offer_outlined),
    title: Text("Offer"),
    ),
        BottomNavigationBarItem (icon: Icon(Icons.person_outline_outlined),
    title: Text("Account"),
    )

  ],
  onTap: (index) {
setState(() {
  _currentIndex = index;
currentAppBarString = listString[index];
});


  },
  
  ),
    );
  }
}
