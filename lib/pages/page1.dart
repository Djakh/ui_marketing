import 'package:flutter/material.dart';


import '../size_config.dart';
import '../widgets.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Colors.grey[400],
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.w2 * 7), //14
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: SizeConfig.w2 * 5), //10
                      child: Text("Man Fashion",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: SizeConfig.h2 * 5,),
           Row(
             children: [
                 Widgets.getAvatarPage1Icon(Icon(Icons.umbrella_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Umbrella"),
                 Widgets.getAvatarPage1Icon(Icon(Icons.edit_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Pencil"),
                 Widgets.getAvatarPage1Icon(Icon(Icons.business_center_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Bag"),
                 Widgets.getAvatarPage1Icon(Icon(Icons.headset_mic_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Headset"),
             ],
           ),
           Row(
             children: [
                 Widgets.getAvatarPage1Icon(Icon(Icons.watch_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Watchs"),
                 Widgets.getAvatarPage1Icon(Icon(Icons.phone_android_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Phone"),
                  ],
           ),
           Padding(
                      padding: EdgeInsets.all(SizeConfig.w2 * 5),
                      child: Text("Woman Fashion",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),

                     Row(
             children: [
                 Widgets.getAvatarPage1Icon(Icon(Icons.card_travel_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Card"),
                 Widgets.getAvatarPage1Icon(Icon(Icons.stroller_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Stroller"),
                 Widgets.getAvatarPage1Icon(Icon(Icons.toys_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Toys"),
                 Widgets.getAvatarPage1Icon(Icon(Icons.wallet_giftcard_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Gifts"),
             ],
           ),
           Row(
             children: [
                 Widgets.getAvatarPage1Icon(Icon(Icons.weekend_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Furniture"),
                 Widgets.getAvatarPage1Icon(Icon(Icons.beach_access_outlined, color: Colors.lightBlue, size: SizeConfig.w2 * 15), "Umbrella"),
                  ],
           ),
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}