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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:204.h),

      child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 68.w,
              height: 105.16.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/Images/failure.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 26.h),
            child: Column(children: [
              Text(Constant.oops,style:TextStyles.txtMedium24.copyWith(color: Constant.white),),
              Text(Constant.youfailed,style:TextStyles.txtMedium24.copyWith(color: Constant.white),)

            ],),),

          Container(
            height: 38.h,
            width:290.w,
            child: Text(Constant.failReason,style:TextStyles.txtRegular16,	textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:24),
            child: Text(Constant.yourScore,style:TextStyles.txtRegular16),
          ),
          Container(
            height: 126.h,
            width: 126.w,
            decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.red,width: 8.w),color: Colors.white),
            child:  Align(
              alignment: Alignment.center,
              child: Text(
                  Constant.sixty,
                  style:TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold,)       ),
            ),          )


        ],
      ) ,
      bottomNavigationBar: Container(
        height: 120.h,
        padding: const EdgeInsets.all(16),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            CommonButton(
              label: Constant.tryAgain,
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Certificate()));
              }               ,
              borderRadius: 5.r,
              bgColor: Constant.white,
              labelColor: Constant.navy,
              textSize: 16.sp,
              width: 380.h,
              borderColor: Constant.btnBorder,

            ),
            Text(Constant.retry,style:TextStyles.txtRegular13),

          ],
        ),
      ),
      );

  }
}
// CommonButton(label: "Try Agian", onTap: (){}),
// Text("Retry the training and complete certification",style:TextStyle(fontSize: 13,),	textAlign: TextAlign.center),

