import 'package:flutter/material.dart';


import '../size_config.dart';
import '../widgets.dart';
class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
            width: double.infinity,
        child: Column(
          
              children: [
                Divider(
                  color: Colors.grey[400],
                ),
              Widgets.getPage3And4FlatButton(SizeConfig.h2 * 40, SizeConfig.w2 * 6, SizeConfig.w2 * 6, "Use MEGSL Cupon For \nGet 90% Off", true),
               Widgets.getPage3MainAssets(),
               Widgets.getMainAsset("assets/sneakers3Page4.jpg", "90% Off Super Mega \nSale", "Special birthday Lafyuu"),
              ],
            ),
      ),
    );
      
    
  }
}