import 'package:academy/ui/common_button.dart';
import 'package:academy/ui/movie_screen.dart';
import 'package:academy/utils/font_style.dart';
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
      resizeToAvoidBottomInset: false,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                color: Colors.grey,
                height: 385.h,
                width: 412.w,
              ),
              backArrow(
                iconColor: Constant.white,
              ),
            ],
          ),
          SizedBox(height: 35.86.h,),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, ),
              child: Text(Constant.heading, style: TextStyles.txtMedium20)),
          SizedBox(height: 38.h,),

          Expanded(
            child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage('assets/Images/icon.jpg'),
                    ),
                    title: Text(
                      'Title',
                      style: TextStyles.txtBold16,
                    ),
                    subtitle: Text(
                      'Subtitle',
                      style: TextStyles.txtRegular14,
                    ),
                  );
                }),
          )
        ],
      ),
      // bottomNavigationBar: Container(
      //   height: 100.h,
      //   color: Constant.white,
      //   padding: EdgeInsets.symmetric(horizontal: 16.w),
      //
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       CommonButton(
      //         label: Constant.doLater,
      //         onTap: () {},
      //         bgColor: Colors.white,
      //         labelColor: Constant.navy,
      //         borderColor: Constant.btnBorder,
      //       ),
      //       CommonButton(
      //         label: Constant.getStarted,
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => MovieScreen()));
      //         },
      //         bgColor: Constant.navy,
      //         labelColor: Colors.white,
      //         ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: Container(
        height:100.h,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        color: Constant.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonButton(
              label: Constant.skip,
              onTap: () {},
              bgColor: Constant.white,
              labelColor: Constant.navy,
              width: 183.w,
              borderColor: Constant.btnBorder,
            ),
            CommonButton(
              label: Constant.next,
              onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MovieScreen()));

              },
              bgColor: Constant.navy,
              labelColor: Constant.white,
              width: 183.w,
            ),
          ],
        ),
      ),

    );
  }
}
