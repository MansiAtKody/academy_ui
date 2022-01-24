import 'package:academy/utils/font_style.dart';
import 'package:academy/utils/theme_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  _CongratulationState createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Constant.navy,
      body: Column(
        children: [
          Flexible(
            child: Container(
              // width: 412.w,
              height: 181.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Images/glitter.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Container(
            height: 181.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Images/glitter1.png"),
                    fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 105.16.w,
                height: 99.2.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Images/done.png"),
                        fit: BoxFit.fill)),
              ),
            ),
          ),
          SizedBox(height: 25.57.h,),
          Text(
            Constant.congratulation,
            style: TextStyles.txtMedium24.copyWith(color: Constant.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 57.23.h,),
          Text(Constant.yourScore, style: TextStyles.txtRegular16),
          SizedBox(height: 24.h,),
          Container(
            height: 126.h,
            width: 126.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.green, width: 8.w),
                color: Colors.white),
            child: Align(
              alignment: Alignment.center,
              child: Text(Constant.hundred,
                  style: TextStyles.txtMedium24, textAlign: TextAlign.center),
            ),
          )
        ],
      ),
    );
  }
}
