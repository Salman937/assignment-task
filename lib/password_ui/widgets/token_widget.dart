import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../resourcs/colors.dart';

class TokenWidget extends StatelessWidget {
  IconData? icon;
  String? heading;
  String? sub_heading;
  String? price;
  String? sub_price;
  double? position_height;

  TokenWidget({
    IconData? this.icon,
    String? this.heading,
    String? this.sub_heading,
    String? this.price,
    String? this.sub_price,
    double? this.position_height,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: position_height,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2.5.h),
        child: Column(
          children: [
            Container(
              width: 89.w,
              height: 10.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: MyColors.cWHITE,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 1.5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          icon,
                          color: MyColors.cBGCOLOR,
                          size: 50,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              heading!,
                              style: TextStyle(
                                color: MyColors.cBGCOLOR,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              sub_heading!,
                              style: TextStyle(
                                color: MyColors.cBGCOLOR,
                                fontWeight: FontWeight.w100,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          price!,
                          style: TextStyle(
                            color: MyColors.cBGCOLOR,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          sub_price!,
                          style: TextStyle(
                            color: MyColors.cBGCOLOR,
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
