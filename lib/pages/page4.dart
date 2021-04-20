import 'package:flutter/material.dart';

import '../list_view.dart';


class Page4 extends StatelessWidget {

   static double sizeIcon = 30;
  List<ListViewForPage4> listPage4 = [
    ListViewForPage4(
      icon: Icon(
        Icons.person_outline_rounded,
        color: Colors.lightBlue,
        size: sizeIcon,
      ),
      name: "Profile"
    ),
    ListViewForPage4(
      icon: Icon(
        Icons.shopping_bag_outlined,
        color: Colors.lightBlue,
        size: sizeIcon,
      ),
      
      name: "Order"
    ),
    ListViewForPage4(
      icon: Icon(
        Icons.location_on_outlined,
        color: Colors.lightBlue,
        size: sizeIcon,
      ),
      name: "Address"
    ),
    ListViewForPage4(
      icon: Icon(
        Icons.payment_outlined,
        color: Colors.lightBlue,
        size: sizeIcon,
      ),
      name: "Payment"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            Divider(
              color: Colors.grey[400],
            ),
        Container(
          child: ListView.builder(
            shrinkWrap: true,
              itemCount: listPage4.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                  child: ListTile(
                    title: Text(listPage4[index].name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    leading: listPage4[index].icon,
                  ),
                );
              }),
        ),
      ],
    );
  }
}
