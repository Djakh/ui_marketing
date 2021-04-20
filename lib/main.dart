import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_marketing/sign_in.dart';
import 'package:ui_marketing/sign_up.dart';
import 'package:ui_marketing/size_config.dart';


import 'head.dart';
import 'loading.dart';


void main() {
  // add these lines
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  ///////////// 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints)
          { return OrientationBuilder(
        builder: (context, orientation) 
        {
          SizeConfig().init(constraints, orientation);
            return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Loading.routeName, routes: {
          Loading.routeName: (ctx) => Loading(),
          SignIn.routeName: (ctx) => SignIn(),
          SignUp.routeName: (ctx) => SignUp(),
          Head.routeName: (ctx) => Head(), }
        ); 
        }
      );
          }
    );
  }
}
