import 'package:academy/ui/Failure_screen.dart';
import 'package:academy/ui/common_button.dart';
import 'package:academy/ui/congratulation_screen.dart';
import 'package:academy/ui/question_screen.dart';
import 'package:academy/utils/font_style.dart';
import 'package:academy/utils/theme_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 248.h,
                width: 412.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/Images/movie.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              backArrow(iconColor: Constant.white,),
            ],

          ),

          Container(
            margin: EdgeInsets.only(top: 51.h),
          child:  ListTile(
            leading: CircleAvatar(
              radius: 20.r,
              backgroundImage: AssetImage('assets/Images/icon.jpg'),
            ),
            title: Text(Constant.movieTitle,style: TextStyles.txtMedium18,),
            subtitle: Text(Constant.watchTime),
          ),
          ),
          Container(
              alignment: Alignment.topLeft,
              padding:  EdgeInsets.symmetric(horizontal:16.w,vertical: 25.h),
              child:  Text(Constant.topics)),
      Expanded(
        child: Container(
          padding:  EdgeInsets.symmetric(horizontal:16.w),

          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 19.w,
            mainAxisSpacing: 19.h,
          ),shrinkWrap: true ,itemCount: 12, itemBuilder:( context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal:8),
              child: Column(children: [
                const CircleAvatar(
                  backgroundImage: const AssetImage('assets/Images/icon.jpg'),
                ),
                SizedBox(height: 5.h,),
                 Text(Constant.topicTtile,textAlign: TextAlign.center,)
              ],),
            );
          }),
        ),
      ),


        ],
      ),
      bottomNavigationBar: Container(
        height: 156.h,
        padding: const EdgeInsets.all(16),
color: Constant.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonButton(
              label: Constant.proceed,
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Question()));
              },
              borderRadius: 5.r,
              bgColor: Constant.navy,
              labelColor: Constant.white,
              textSize: 16.sp,
              width: 380.w,
            ),

            CommonButton(
              label: Constant.skipTutorial,
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Question()));
              }               ,
              borderRadius: 5.r,
              bgColor: Constant.white,
              labelColor: Constant.navy,
              textSize: 16.sp,
              width: 380.w,
              borderColor: Constant.btnBorder,

            ),
          ],
        ),
      ),

    );
  }
}
