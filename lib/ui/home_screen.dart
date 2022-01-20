import 'package:academy/ui/Failure_screen.dart';
import 'package:academy/ui/common_button.dart';
import 'package:academy/ui/congratulation_screen.dart';
import 'package:academy/ui/movie_screen.dart';
import 'package:academy/utils/theme_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.grey,
                height: 385.h,
                width: 412.w,

              ),
       backArrow(iconColor: Constant.white,),
            ],
          ),

          Container(
            alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top:16.h),
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child:  Text(Constant.heading,style: TextStyle(
                fontSize: 20.sp,
              ))),
          ListView.builder(itemCount: 3,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) {
            return  ListTile(
              leading: CircleAvatar(
                radius: 20.r,
                backgroundImage: AssetImage('assets/Images/icon.jpg'),
              ),
              title: Text('Title',),
              subtitle: Text('Subtitle'),
            );

    }
    )
        ],
      ),
      bottomNavigationBar: Container(
          height: 100.h,
          padding:  EdgeInsets.symmetric(horizontal: 16.w,),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
               CommonButton(
                label: Constant.doLater,
                onTap: (){},
                borderRadius: 5.r,
                bgColor: Colors.white,
                labelColor: Constant.navy,
                textSize: 16.sp,
                width: 183.w,
                borderColor: Constant.btnBorder,
              ),

            CommonButton(
                label: Constant.getStarted,
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> MovieScreen()));
                }               ,
                borderRadius: 5.r,
                bgColor: Constant.navy,
                labelColor: Colors.white,
                textSize: 16.sp,
                width: 183.w,
              ),
          ],
        ),
      ),

    );
  }
}


