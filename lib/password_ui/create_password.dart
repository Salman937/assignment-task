import 'dart:ui';

import 'package:first_fultter/password_ui/resourcs/colors.dart';
import 'package:first_fultter/password_ui/resourcs/strings.dart';
import 'package:first_fultter/password_ui/widgets/creat_password_form.dart';
import 'package:first_fultter/password_ui/widgets/create_password_header.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CreatePassword extends StatelessWidget {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.cBGCOLOR,
      body: ListView(
        children: [
          CreatePasswordHeader(),
          CreatePasswordForm(),
          Container(
            width: 100.w,
            height: 25.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle_rounded,
                  color: MyColors.cWHITE,
                ),
                Icon(
                  Icons.circle_outlined,
                  color: MyColors.cLIGHTGREY,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
