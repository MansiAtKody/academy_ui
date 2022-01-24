import 'package:academy/ui/Failure_screen.dart';
import 'package:academy/ui/congratulation_screen.dart';
import 'package:academy/utils/theme_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'common_button.dart';

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
      resizeToAvoidBottomInset: false,

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
                  child: Container(
                    height: 42.74.h,
                    width: 110.34.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Images/topClip.png"),
                            fit: BoxFit.fill)),
                  ))
            ],
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 16.w),
              child: backArrow()),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 20.h),
            padding: EdgeInsets.only(left: 16.w),
            child: Container(
              height: 65.h,
              width: 62.42.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Images/academyLogo.png"),
                      fit: BoxFit.fill)),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 32.h),
            padding: EdgeInsets.only(left: 16.w),
            child: Text(
              Constant.questionTitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 428.h,
              width: 412.w,
              child: Theme(
                data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.light(primary: Constant.navy)),
                child: Stepper(
                  type: StepperType.horizontal, steps: getSteps(),
                  currentStep: currentStep,
                  onStepTapped: (step) => setState(() => currentStep = step),
                  controlsBuilder: (context, details) {
                    return Flexible(child: SizedBox());
                  },
                ),
              ),
            ),
          )
        ],
      ),
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
              onTap: () {
                /* currentStep==0?*/
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Failure()));
                /* :()=>setState(() => currentStep-=1);*/
              },
              bgColor: Constant.white,
              labelColor: Constant.navy,
              width: 183.w,
              borderColor: Constant.btnBorder,
            ),
            CommonButton(
              label: Constant.next,
              onTap: () {
                final isLastStep = currentStep == getSteps().length - 1;
                if (isLastStep) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Congratulation()));
                } else {
                  setState(() => currentStep += 1);
                }
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

  List<Step> getSteps() => [
        Step(
            isActive: currentStep >= 0,
            title: const Text(""),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Constant.queName,
                    style: TextStyle(
                        fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 8.5.h),
                          height: 55.h,
                          width: 380.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Constant.btnBorder,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(27.5.r)),
                            color: (index == 0)
                                ? Constant.rightAns
                                : Constant.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(16),
                                height: 26.h,
                                width: 26.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Constant.btnBorder),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text('A',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                      )),
                                ),
                              ),
                              Text(Constant.option,
                                  style: TextStyle(fontSize: 14.sp)),
                            ],
                          ),
                        );
                      })
                ],
              ),
            )),
        Step(
            isActive: currentStep >= 1,
            title: const Text(""),
            content: Container()),
        Step(
            isActive: currentStep >= 2,
            title: const Text(""),
            content: Container()),
        Step(
            isActive: currentStep >= 3,
            title: const Text(""),
            content: Container()),
        Step(
            isActive: currentStep >= 4,
            title: const Text(""),
            content: Container()),
      ];
}
