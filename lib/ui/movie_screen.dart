import 'package:academy/ui/common_button.dart';
import 'package:academy/ui/congratulation_screen.dart';
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
                color: Colors.black,
                height: 248.h,
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
          child: const ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/Images/icon.jpg'),
            ),
            title: Text("AePS Knowledge Tutorial"),
            subtitle: Text("10 min. watch"),
          ),
          ),
          Container(
            margin: EdgeInsets.only(top: 45.h),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left:16),
              child: const Text("Covering Topics:")),
      Container(
        padding: const EdgeInsets.symmetric(horizontal:16),

        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 19.w,
          mainAxisSpacing: 19.h,
        ),shrinkWrap: true ,itemCount: 6, itemBuilder:( context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal:8),
            child: Column(children: [
              const CircleAvatar(
                backgroundImage: const AssetImage('assets/Images/icon.jpg'),
              ),
              SizedBox(height: 5.h,),
              const Text("Whats is AePS?",textAlign: TextAlign.center,)
            ],),
          );
        }),
      ),


        ],
      ),
      bottomNavigationBar: Container(
        height: 156.h,
        padding: const EdgeInsets.all( 16),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonButton(
              label: "proceed",
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const MovieScreen()));
              },
              borderRadius: 5,
              bgColor: Colors.blue,
              labelColor: Colors.white,
              textSize: 16,
              width: 380.h,
            ),

            CommonButton(
              label: "Skip Tutorial",
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const Congratulation()));
              }               ,
              borderRadius: 5,
              bgColor: Colors.white,
              labelColor: Colors.blue,
              textSize: 16,
              width: 380.h,
              borderColor: Colors.black,

            ),
          ],
        ),
      ),

    );
  }
}
