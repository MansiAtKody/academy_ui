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
                color: Colors.red,
                height: 385.h,
                width: 412.w,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage(
                //         'assets/Images/home.png'),
                //     fit: BoxFit.fill,
                //   ),
                // ),
              ),
       backArrow(),
            ],
          ),

          Container(
            alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top:16.h),
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const Text("Get your AePS certification",style: TextStyle(
                fontSize: 20,
              ))),
          ListView.builder(itemCount: 3,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(
                radius: 20,
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
                label: "i'll do later",
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> MovieScreen()));
                },
                borderRadius: 5,
                bgColor: Colors.white,
                labelColor: Constant.navy,
                textSize: 16,
                width: 183.w,
                borderColor: Constant.btnBorder,
              ),

            CommonButton(
                label: "Get Started",
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Congratulation()));
                }               ,
                borderRadius: 5,
                bgColor: Constant.navy,
                labelColor: Colors.white,
                textSize: 16,
                width: 183.w,
              ),
          ],
        ),
      ),

    );
  }
}


