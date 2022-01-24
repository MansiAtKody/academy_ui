import 'package:academy/ui/certificate_screen.dart';
import 'package:academy/ui/common_button.dart';
import 'package:academy/utils/font_style.dart';
import 'package:academy/utils/theme_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'congratulation_screen.dart';

class Failure extends StatefulWidget {
  const Failure({Key? key}) : super(key: key);

  @override
  _FailureState createState() => _FailureState();
}

class _FailureState extends State<Failure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.navy,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Flexible(
              child: SizedBox(
            height: 204.h,
          )),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 68.21.w,
                height: 105.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Images/failure.png"),
                        fit: BoxFit.fill)),
              ),
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          Text(
            Constant.oopsYoufailed,
            style: TextStyles.txtMedium24.copyWith(color: Constant.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 19.h,
          ),
          SizedBox(
            width: 290.w,
            child: Text(
              Constant.failReason,
              style: TextStyles.txtRegular16,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50.h,),
          Text(Constant.yourScore, style: TextStyles.txtRegular16),
          SizedBox(height: 24.h,),

          Container(
            height: 126.h,
            width: 126.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red, width: 8.w),
                color: Colors.white),
            child: Align(
              alignment: Alignment.center,
              child: Text(Constant.sixty,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 120.h,
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CommonButton(
              label: Constant.tryAgain,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Certificate()));
              },
              bgColor: Constant.white,
              labelColor: Constant.navy,
              borderColor: Constant.btnBorder,
            ),
            Text(Constant.retry, style: TextStyles.txtRegular13),
          ],
        ),
      ),
    );
  }
}
