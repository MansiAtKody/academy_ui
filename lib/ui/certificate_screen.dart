import 'package:academy/ui/Failure_screen.dart';
import 'package:academy/ui/common_button.dart';
import 'package:academy/utils/font_style.dart';
import 'package:academy/utils/theme_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'congratulation_screen.dart';
class Certificate extends StatefulWidget {
  const Certificate({Key? key}) : super(key: key);

  @override
  _CertificateState createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 42.74.h,
                width: 412.w,

              ),
              Positioned(
                  right: 31.66.w,
                  child: Container(height: 42.74.h,
                    width: 110.34.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/Images/topClip.png"),
                            fit: BoxFit.fill
                        )
                    ),) )
            ],
          ),

          Container(
              alignment: Alignment.topLeft,
              padding:  EdgeInsets.only(left: 16.w),
              child: backArrow()),
          Container(
            alignment: Alignment.topLeft,
            margin:  EdgeInsets.only(top:20.h),
            padding:  EdgeInsets.only(left: 16.w),
            child: Container(
                height: 65.h,
                width: 62.42.w,
                decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage(
                "assets/Images/academyLogo.png"),
        fit: BoxFit.cover
    )
    ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin:  EdgeInsets.only(top:32.h),
            padding:  EdgeInsets.only(left: 16.w),
            child:  Text(Constant.certiTitle,style:TextStyles.txtMedium20,),
          ),
          Container(
            margin:  EdgeInsets.only(top:21.h),
            padding: EdgeInsets.symmetric(horizontal: 16.w),

            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 402.w,
                height: 286.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/Images/certificate.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 34.h),
            child: CommonButton(
              icon: const Icon(Icons.subdirectory_arrow_left,color: Colors.red,),
              label: Constant.downloadCerti,
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Failure()));
              },
              bgColor: Constant.navy,
              labelColor: Constant.white,
              width: 380.h,
            ),
          ),

          Container(
            margin: EdgeInsets.only(top:24.5.h),

            child: CommonButton(
              icon: const Icon(Icons.subdirectory_arrow_left,color: Colors.red,),
              label: Constant.shareCerti,
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Congratulation()));
              }               ,
              bgColor: Constant.white,
              labelColor: Constant.navy,
              width: 380.h,
              borderColor: Constant.btnBorder,

            ),
          ),


        ],
      ),
    );
  }
}
