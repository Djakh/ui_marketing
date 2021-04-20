import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../size_config.dart';
import '../widgets.dart';

class Page0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
            children: [
              Divider(
                color: Colors.grey[400],
              ),
              Widgets.getMainAsset("assets/sneakers1.jpg", "Recommended \nProduct", "We recommended the best for you"),
              Row(
                  children: [
        Widgets.getPage0Card("assets/sn1.jpg", 2.187 * SizeConfig.w /*w 9*/, 0.0, 1.458 * SizeConfig.w /*w 6*/, 0.877* SizeConfig.h /*h 6*/), //9.0, 0.0, 6.0, 6.0
        Widgets.getPage0Card("assets/sn2.jpg", 1.458 * SizeConfig.w, 0.0, 2.187 * SizeConfig.w, 0.877* SizeConfig.h), //6.0, 0.0, 9.0, 6.0
                  ],
                ),
              Row(
                  children: [
        Widgets.getPage0Card("assets/sn3.jpg", 2.187 * SizeConfig.w, 0.877* SizeConfig.h, 1.458 * SizeConfig.w, 0.877* SizeConfig.h), //9.0, 6.0, 6.0, 6.0
        Widgets.getPage0Card("assets/sn4.jpg", 1.458 * SizeConfig.w /*w 6*/, 0.877* SizeConfig.h, 2.187 * SizeConfig.w, 0.877* SizeConfig.h), //6.0, 6.0, 9.0, 6.0
                  ],
                ),
            ],
          ),
      ),
    );
  }
}
