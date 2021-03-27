import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_marketing/loading.dart';
import 'package:ui_marketing/sign_in.dart';
import 'package:ui_marketing/sign_up.dart';

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
    return MaterialApp(
      
      initialRoute: Loading.routeName, routes: {
      Loading.routeName: (ctx) => Loading(),
      SignIn.routeName: (ctx) => SignIn(),
      SignUp.routeName: (ctx) => SignUp(),
    });
  }
}
