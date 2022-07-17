import 'package:first_fultter/password_ui/resourcs/colors.dart';
import 'package:first_fultter/password_ui/resourcs/strings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CreatePasswordHeader extends StatelessWidget {
  const CreatePasswordHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 25.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.power_settings_new,
            color: MyColors.cWHITE,
            size: 12.w,
          ),
          Text(
            Strings.HEADER_TEXT,
            style: TextStyle(
              color: MyColors.cWHITE,
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
