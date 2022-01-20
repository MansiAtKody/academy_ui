import 'package:academy/ui/Failure_screen.dart';
import 'package:academy/ui/congratulation_screen.dart';
import 'package:academy/utils/theme_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timelines/timelines.dart';
import 'common_button.dart';
import 'movie_screen.dart';
import 'package:cupertino_stepper/cupertino_stepper.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int currentStep = 0;
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
                        fit: BoxFit.cover
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
            child:  Text(Constant.questionTitle,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 500.h,
                width: 412.w,
                child: Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.light(primary: Constant.navy)
                  ),
                  child: Stepper( type: StepperType.horizontal,steps:  getSteps(),currentStep: currentStep,
                  onStepTapped: (step)=>setState(()=>currentStep= step),
                    onStepContinue: (){
                    final isLastStep = currentStep == getSteps().length-1;
                    if(isLastStep){

                    }
                    else {
                      setState(() => currentStep += 1);
                    }
                    },
                  onStepCancel: (){
                    /*currentStep==0?null:()=> */setState(() => currentStep-=1);
                  },
                    controlsBuilder: (context,details ) {
                        return Container(
                          height: 100.h,

                          padding:  EdgeInsets.symmetric(horizontal: 16.w,),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CommonButton(
                                label: "Skip",
                                onTap: (){
                                  /*currentStep==0?null:()=> */setState(() => currentStep-=1);

                                },
                                borderRadius: 5,
                                bgColor: Colors.white,
                                labelColor: Constant.navy,
                                textSize: 16,
                                width: 183.w,
                                borderColor: Constant.btnBorder,
                              ),

                              CommonButton(
                                label: "Next",
                                onTap: (){
                                  final isLastStep = currentStep == getSteps().length-1;
                                  if(isLastStep){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=> const MovieScreen()));

                                  }
                                  else {
                                    setState(() => currentStep += 1);
                                  }                                }               ,
                                borderRadius: 5,
                                bgColor: Constant.navy,
                                labelColor: Colors.white,
                                textSize: 16,
                                width: 183.w,
                              ),
                            ],
                          ),
                        );
                    },
                  ),
                ),
            ),
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
              label: Constant.skip,
              onTap: (){
                currentStep==0?Navigator.push(context,MaterialPageRoute(builder: (context)=> const Failure()))
                    :()=>setState(() => currentStep-=1);
              },
              borderRadius: 5.r,
              bgColor: Colors.white,
              labelColor: Constant.navy,
              textSize: 16.sp,
              width: 183.w,
              borderColor: Constant.btnBorder,
            ),

            CommonButton(
              label: Constant.next,
              onTap: (){
                final isLastStep = currentStep == getSteps().length-1;
                if(isLastStep){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const Congratulation()));
                }
                else {
                  setState(() => currentStep += 1);
                }
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


  List<Step> getSteps() =>[
    Step(isActive:currentStep>=0,
        title: const Text(""),
        content: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(Constant.queName,style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ListView.builder(itemCount: 4,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8.5.h),
                      height: 55.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Constant.btnBorder,

                        ),
                          borderRadius:  BorderRadius.all( Radius.circular(27.5.r))

                      ),

                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(16),

                            height: 26.h,
                            width: 26.w,
                            decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Constant.btnBorder),),
                            child:  Align(
                              alignment: Alignment.center,

                              child: Text(
                                  'A',
                                  style:TextStyle(fontSize: 10.sp,)             ),
                            ),          ),
                           Text(Constant.option,style:TextStyle(fontSize: 14.sp)),
                        ],
                      ),
                    );

                  }
              )

            ],
          ),  )),

    Step(isActive:currentStep>=1,
        title: const Text(""),
        content: Container()),

    Step(isActive:currentStep>=2,
        title: const Text(""),
        content: Container()),

    Step(isActive:currentStep>=3,
        title: const Text(""),
        content: Container()),

    Step(isActive:currentStep>=4,
        title: const Text(""),
        content: Container()),
  ];
}
