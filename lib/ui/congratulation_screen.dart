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
        backgroundColor: Constant.navy,
      body: Column(
        children: [
          Container(
            width: 393.w,
            height: 181.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/Images/glitter.png"                    ),
                    fit: BoxFit.cover
                )
            ),
          ),
          Container(
            width: 393.w,
            height: 181.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/Images/glitter1.png"                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 105.16.w,
                height: 99.2.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/Images/done.png"),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ),
          ),
Container(
  width: 302.w,
  padding: EdgeInsets.symmetric(vertical: 26.w),
  child: Column(children: [
  Text(Constant.congratulation,style:TextStyles.txtMedium24.copyWith(color: Constant.white),textAlign: TextAlign.center,),

],),),
          Padding(
            padding:  EdgeInsets.symmetric(vertical:24.0.w),
            child: Text(Constant.yourScore,style:TextStyles.txtRegular16),
          ),
          Container(
            height: 126.h,
            width: 126.w,
            decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.green,width: 8.w),color: Colors.white),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                Constant.hundred,
                  style:TextStyles.txtMedium24,textAlign: TextAlign.center            ),
            ),          )


        ],
      ) ,
    );
  }
}
