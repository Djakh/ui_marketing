import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';
import '../widgets.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Divider(
              color: Colors.grey[400],
            ),
            Widgets.getOutlinePage2Container("assets/sn3.jpg", true),
            Widgets.getOutlinePage2Container("assets/sn4.jpg", false),
            SizedBox(
              height: SizeConfig.h2 * 6.5,
            ),
            Widgets.getPage2TextField(),
            Padding(
              padding: EdgeInsets.all(SizeConfig.w2 * 3),
              child: Container(
                height: SizeConfig.h2 * 87.5,
                width: SizeConfig.w2 * 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.grey[300])),
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(SizeConfig.w2 * 7, SizeConfig.h2 * 8, SizeConfig.w2 * 7, SizeConfig.h2 * 8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Items (3)", style: TextStyle(fontSize: SizeConfig.w2 * 8.5, color: Colors.grey),),
                              Text("\$598,86", style: TextStyle(fontSize: SizeConfig.w2 * 8.5, ),),
                              
                        ],
                      ),
                      SizedBox(height: SizeConfig.w2 * 8.5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Shipping", style: TextStyle(fontSize: SizeConfig.w2 * 8.5, color: Colors.grey),),
                              Text("\$40,00", style: TextStyle(fontSize: SizeConfig.w2 * 8.5, ),),
                              
                        ],
                      ),
                      SizedBox(height: SizeConfig.w2 * 8.5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Import charges", style: TextStyle(fontSize: SizeConfig.w2 * 8.5, color: Colors.grey),),
                              Text("\$128,00", style: TextStyle(fontSize: SizeConfig.w2 * 8.5, ),),
                              
                        ],
                      ),
                      SizedBox(height: SizeConfig.h2 * 6,),
                      DottedLine(dashColor: Colors.grey[300],
                      dashLength: 5,
                      ),
                      SizedBox(height: SizeConfig.h2 * 6,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Price", style: TextStyle(fontSize: SizeConfig.w2 * 8.5,  fontWeight: FontWeight.bold),),
                              Text("\$766,86", style: TextStyle(fontSize: SizeConfig.w2 * 8.5, color: Colors.lightBlue, fontWeight: FontWeight.bold),),
                              
                        ],
                      ),
                     
                    ],
                  ),
                ),
              ),
            ),
             Widgets.getPage3And4FlatButton(SizeConfig.h2 * 30, SizeConfig.w2 * 7.5, SizeConfig.w2 * 7.5, "Check Out", false)
          ],
        ),
      ),
    );
  }
}
