import 'dart:ui';

import 'package:first_fultter/password_ui/resourcs/colors.dart';
import 'package:first_fultter/password_ui/resourcs/strings.dart';
import 'package:first_fultter/password_ui/widgets/token_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailsPage extends StatefulWidget {
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String dropdownValue = 'Ropsten testnet';
  String dropdownValue2 = 'oxDaAd...Beef';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.cDARKWHITE,
      appBar: AppBar(
        title: Text(Strings.DETAILS_PAGE_TITLE),
        backgroundColor: MyColors.cBGCOLOR,
      ),
      body: Stack(
        // alignment: AlignmentDirectional.center,
        children: [
          /** Positioned WIdget **/
          Positioned(
            top: 0.0,
            child: Container(
              width: 100.w,
              height: 6.h,
              color: MyColors.cBGCOLOR,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2.5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      style: const TextStyle(color: MyColors.cORANGE),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['Ropsten testnet', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    DropdownButton<String>(
                      value: dropdownValue2,
                      icon: const Icon(Icons.arrow_drop_down),
                      style: const TextStyle(color: MyColors.cLIGHTGREY),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue2 = newValue!;
                        });
                      },
                      items: <String>['oxDaAd...Beef', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ), //Icon
          ), //Positioned
          Positioned(
            top: 6.h,
            child: Container(
              width: 100.w,
              height: 12.h,
              color: MyColors.cBGCOLOR,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2.5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.TOTAL_BALANCE,
                          style: TextStyle(
                            color: MyColors.cLIGHTGREY,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          Strings.TOTAL_BALANCE_VAL,
                          style: TextStyle(
                            color: MyColors.cWHITE,
                            fontWeight: FontWeight.bold,
                            fontSize: 23.sp,
                          ),
                        ),
                      ],
                    ),
                    ButtonTheme(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: MyColors.cBGLIGHTCOLOR,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              color: MyColors.cWHITE,
                              size: 15,
                            ),
                            Text(
                              Strings.ADD_TOKEN,
                              style: TextStyle(
                                color: MyColors.cWHITE,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ), //CircularAvatar
          ),
          Positioned(
            top: 18.h,
            child: Container(
              width: 100.w,
              height: 12.h,
              color: MyColors.cBGCOLOR,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2.5.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.YOUR_TOKEN,
                          style: TextStyle(
                            color: MyColors.cLIGHTGREY,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          Strings.MAKE_CHANGES,
                          style: TextStyle(
                            color: MyColors.cLIGHTGREY,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ), //Positioned
          TokenWidget(
            position_height: 27.h,
            icon: Icons.diamond,
            heading: 'Oxfl...d098',
            sub_heading: 'Mainnet',
            price: '12.456 ETH',
            sub_price: '\$51.34',
          ),
          TokenWidget(
            position_height: 38.h,
            icon: Icons.power_settings_new,
            heading: '0xb5...79x2',
            sub_heading: 'Ropston testpen',
            price: '38245.12 OGD',
            sub_price: '\$215.25',
          ),
          TokenWidget(
            position_height: 49.h,
            icon: Icons.currency_bitcoin,
            heading: '0x59...N7h9',
            sub_heading: 'Moinnet',
            price: '326.12 BTC',
            sub_price: '\$83.58',
          ),
          TokenWidget(
            position_height: 60.h,
            icon: Icons.control_point,
            heading: '0x59...N7h9',
            sub_heading: 'Moinnet',
            price: '326.12 BTC',
            sub_price: '\$83.58',
          ),
          TokenWidget(
            position_height: 71.h,
            icon: Icons.add_circle,
            heading: 'Add Token',
            sub_heading: 'Bitcoin, Cashcoin, Monero',
            price: '',
            sub_price: '',
          ),
        ],
      ), //Padding,
    );
  }
}
