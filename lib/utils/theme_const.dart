import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constant{
  /// Colors
  static Color navy                 =   const Color(0xff293897);
  static Color white                =   const Color(0xffFFFFFF);
  static Color black                =   const Color(0xff000000);
  static Color btnBorder            =   const Color(0xffD1D8E7);
  static Color clrGrey              =   const Color(0xff807F7F);
  static Color rightAns             =   const Color(0xff1CC17D);

/*
  * ------------------------ FontStyle ----------------------------------------- *
  * */
  String fontFamily = "Roboto";

  FontWeight fwThin = FontWeight.w100;
  FontWeight fwExtraLight = FontWeight.w200;
  FontWeight fwLight = FontWeight.w300;
  FontWeight fwRegular = FontWeight.w400;
  FontWeight fwMedium = FontWeight.w500;
  FontWeight fwSemiBold = FontWeight.w600;
  FontWeight fwBold = FontWeight.w700;
  FontWeight fwExtraBold = FontWeight.w800;

  /// String


  //Screen - 2
  static String heading = "Get your AePS certification";

  //Screen - 5
  static String movieTitle="AePS Knowledge Tutorial";
  static String watchTime="10 min. watch";
  static String topics="Covering Topics:";
  static String topicTtile="Whats is AePS?";

  //Screen - 7
  static String questionTitle="Just answer 4 questions and get your AePS certificate";
  static String queName="What is full form of AEPS?";
  static String option="Aadhaar Establish Pay Services";

  //Screen - 8
  static String congratulation="Congratulations! You've successfully passed";
  static String yourScore="Your scores are";
  static String hundred="100%";

  //Screen - 9

  //Screen - 10
  static String certiTitle="Congrats! You're certified";

  //Screen - 11
  static String oops="Oops!";
  static String youfailed="You failed in the test";
  static String failReason="You have not scored the minimum requirement to complete the certification";
  static String sixty="60%";
  static String retry="Retry the training and complete certification";

  //button
  static String doLater="I'll do later";
  static String getStarted="Get Started";
  static String downloadCerti="Download Certificate";
  static String shareCerti="Share Certificate";
  static String tryAgain="Try Again";
  static String proceed="Proceed";
  static String skipTutorial="Skip Tutorial";
  static String skip="Skip";
  static String next="Next";

}



// class TextStyles {
//
//   /// 8 ------------------------------------------------------------
//
//   static TextStyle get txtNormal8 => TextStyle(
//       color: Constant.black,
//       fontSize: 8.sp,
//       fontWeight: Constant().fwMedium,
//       fontFamily: Constant.fontFamily);
//
//   /// 9 ------------------------------------------------------------
//
//   static TextStyle get txtNormal9 => TextStyle(
//     color: Constant.black,
//     fontSize: 9.sp,
//     fontWeight: Constant().fwRegular,
//     fontFamily: Constant.fontFamily,
//   );
//
//   /// 10 ------------------------------------------------------------
//
//   static TextStyle get txtRegular10 => TextStyle(
//     color: Constant.black,
//     fontSize: 10.sp,
//     fontWeight: Constant().fwRegular,
//     fontFamily: Constant.fontFamily,
//   );
//
//   static TextStyle get txtMedium10 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 10.sp,
//       fontWeight: Constant().fwMedium,
//       fontFamily: Constant.fontFamily);
//
//   /// 11 ------------------------------------------------------------
//
//   static TextStyle get txtRegular11 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 11.sp,
//     fontWeight: Constant().fwRegular,
//     fontFamily: Constant.fontFamily,
//   );
//   static TextStyle get txtMedium11 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 11.sp,
//     fontWeight: Constant().fwMedium,
//     fontFamily: Constant.fontFamily,
//   );
//
//   /// 12 ------------------------------------------------------------
//
//   static TextStyle get txtRegular12 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 12.sp,
//     fontWeight: Constant().fwRegular,
//     fontFamily: Constant.fontFamily,
//   );
//
//   static TextStyle get txtNormal12 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 12.sp,
//     fontWeight: Constant().fwMedium,
//     fontFamily: Constant().fontFamily,
//   );
//
//   static TextStyle get txtSemiBold12 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 12.sp,
//     fontWeight: Constant().fwSemiBold,
//     fontFamily: Constant.fontFamily,
//   );
//
//   static TextStyle get txtMedium12 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 12.sp,
//     fontWeight: Constant().fwMedium,
//     fontFamily: Constant().fontFamily,
//   );
//
//   /// 13 ------------------------------------------------------------
//
//   static TextStyle get txtMedium13 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 12.sp,
//     fontWeight: Constant().fwMedium,
//     fontFamily: Constant().fontFamily,
//   );
//
//   /// 14 ------------------------------------------------------------
//
//   static TextStyle get txtSemiBold14 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 14.sp,
//     fontWeight: Constant().fwSemiBold,
//     fontFamily: Constant().fontFamily,
//   );
//
//   static TextStyle get txtNormal14 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 14.sp,
//     fontWeight: Constant().fwMedium,
//     fontFamily: Constant().fontFamily,
//   );
//
//   static TextStyle get txtRegular14 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 14.sp,
//     fontWeight: Constant().fwRegular,
//     fontFamily: Constant().fontFamily,
//   );
//
//   static TextStyle get txtMedium14 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 14.sp,
//     fontWeight: Constant().fwMedium,
//     fontFamily: Constant().fontFamily,
//   );
//
//   /// 15 ------------------------------------------------------------
//
//   static TextStyle get txtRegular15 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 15.sp,
//     fontWeight: Constant().fwRegular,
//     fontFamily: Constant().fontFamily,
//   );
//
//   static TextStyle get txtSemiBold15 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 15.sp,
//     fontWeight: Constant().fwSemiBold,
//     fontFamily: Constant().fontFamily,
//   );
//
//   static TextStyle get txtMedium15 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 15.sp,
//       fontWeight: Constant().fwMedium,
//       fontFamily: Constant().fontFamily);
//
//   /// 16 ------------------------------------------------------------
//
//   static TextStyle get txtSemiBold16 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 16.sp,
//     fontWeight: Constant().fwSemiBold,
//     fontFamily: Constant().fontFamily,
//   );
//
//   static TextStyle get txtMedium16 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 16.sp,
//       fontWeight: Constant().fwMedium,
//       fontFamily: Constant().fontFamily);
//
//   static TextStyle get txtMedium40 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 40.sp,
//       fontWeight: Constant().fwMedium,
//       fontFamily: Constant().fontFamily);
//
//   static TextStyle get txtBold16 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 16.sp,
//       fontWeight: Constant().fwBold,
//       fontFamily: Constant().fontFamily);
//
//   static TextStyle get txtNormal16 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 16.sp,
//     fontWeight: Constant().fwMedium,
//     fontFamily: Constant().fontFamily,
//   );
//
//   static TextStyle get txtRegular16 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 16.sp,
//     fontWeight: Constant().fwRegular,
//     fontFamily: Constant().fontFamily,
//   );
//
//   /// 17 ------------------------------------------------------------
//
//   static TextStyle get txtRegular17 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 17.sp,
//     fontWeight: Constant().fwRegular,
//     fontFamily: Constant().fontFamily,
//   );
//
//   /// 18 ------------------------------------------------------------
//
//   static TextStyle get txtSemiBold18 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 18.sp,
//     fontWeight: Constant().fwSemiBold,
//     fontFamily: Constant().fontFamily,
//   );
//
//   static TextStyle get txtMedium18 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 18.sp,
//     fontWeight: Constant().fwMedium,
//     fontFamily: Constant().fontFamily,
//   );
//
//   static TextStyle get txtHeader18 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 18.sp,
//     fontWeight: Constant().fwMedium,
//     fontFamily: Constant().fontFamily,
//   );
//
//   static TextStyle get txtRegular18 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 18.sp,
//     fontWeight: Constant().fwRegular,
//     fontFamily: Constant().fontFamily,
//   );
//   static TextStyle get txtBold18 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 18.sp,
//     fontWeight: Constant().fwBold,
//     fontFamily: Constant().fontFamily,
//   );
//
//   /// 20 ------------------------------------------------------------
//
//   static TextStyle get txtMedium20 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 20.sp,
//       fontWeight: Constant().fwMedium,
//       fontFamily: Constant().fontFamily);
//
//   static TextStyle get txtSemiBold20 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 20.sp,
//       fontWeight: Constant().fwSemiBold,
//       fontFamily: Constant().fontFamily);
//
//   /// 22 ------------------------------------------------------------
//   static TextStyle get txtSemiBold22 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 22.sp,
//       fontWeight: Constant().fwSemiBold,
//       fontFamily: Constant().fontFamily);
//
//   /// 24 ------------------------------------------------------------
//
//   static TextStyle get txtSemiBold24 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 24.sp,
//     fontWeight: Constant().fwSemiBold,
//     fontFamily: Constant().fontFamily,
//   );
//
//   /// 25 ------------------------------------------------------------
//
//   static TextStyle get txtHeader25 => TextStyle(
//     color: Constant().clrTextMainFontByTheme(),
//     fontSize: 25.sp,
//     fontWeight: Constant().fwMedium,
//     fontFamily: Constant().fontFamily,
//   );
//
//   /// 28 ------------------------------------------------------------
//
//   static TextStyle get txtBold28 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 28.sp,
//       fontWeight: Constant().fwBold,
//       fontFamily: Constant().fontFamily);
//
//   static TextStyle get txtRegular28 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 28.sp,
//       fontWeight: Constant().fwRegular,
//       fontFamily: Constant().fontFamily);
//
//   static TextStyle get txtSemiBold28 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 28.sp,
//       fontWeight: Constant().fwSemiBold,
//       fontFamily: Constant().fontFamily);
//
//   static TextStyle get txtBold34 => TextStyle(
//       color: Constant().clrTextMainFontByTheme(),
//       fontSize: 34.sp,
//       fontWeight: Constant().fwBold,
//       fontFamily: Constant().fontFamily);
// }
