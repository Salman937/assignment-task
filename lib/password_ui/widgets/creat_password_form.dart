import 'package:first_fultter/password_ui/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sizer/sizer.dart';

import '../resourcs/colors.dart';
import '../resourcs/strings.dart';

class CreatePasswordForm extends StatelessWidget {
  const CreatePasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Container(
      width: 100.w,
      height: 50.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.NEW_PASSWORD,
              style: TextStyle(
                color: MyColors.cLIGHTGREY,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1.5.h),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.cLIGHTGREY,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.cLIGHTGREY,
                    width: 2,
                  ),
                ),
                hintText: Strings.ENTER_PASSWORD,
                hintStyle: TextStyle(
                  color: MyColors.cLIGHTGREY,
                ),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.visibility_off,
                    color: MyColors.cLIGHTGREY,
                  ),
                ),
              ),
              style: TextStyle(
                color: MyColors.cWHITE,
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              Strings.CONFIRM_PASSWORD,
              style: TextStyle(
                color: MyColors.cLIGHTGREY,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1.5.h),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.cLIGHTGREY,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.cLIGHTGREY,
                    width: 2,
                  ),
                ),
                hintText: Strings.CONFIRM_PASSWORD,
                hintStyle: TextStyle(
                  color: MyColors.cLIGHTGREY,
                ),
              ),
              style: TextStyle(
                color: MyColors.cWHITE,
              ),
              obscureText: true,
            ),
            SizedBox(height: 3.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.ENABLE_TOUCH,
                  style: TextStyle(
                    color: MyColors.cLIGHTGREY,
                    fontSize: 15.sp,
                  ),
                ),
                FlutterSwitch(
                  value: isSwitched,
                  inactiveColor: MyColors.cBGCOLOR,
                  activeColor: MyColors.cLIGHTGREY,
                  switchBorder: Border.all(
                    color: MyColors.cLIGHTGREY,
                    width: 1.0,
                  ),
                  onToggle: (val) {
                    setState() {
                      isSwitched = val;
                    }
                  },
                )
              ],
            ),
            SizedBox(height: 5.h),
            ButtonTheme(
              minWidth: 100.h,
              child: MaterialButton(
                color: MyColors.cLIGHTGREEN,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: Text(
                    Strings.NEXT,
                    style: TextStyle(
                      color: MyColors.cWHITE,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
