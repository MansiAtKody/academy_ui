import 'package:academy/utils/theme_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget with Constant {
  final String label;
  final Function()? onTap;
  final Color? bgColor;
  final Color? labelColor;
  final Color? borderColor;
  final double? borderRadius;
  final double? height;
  final double? width;
  final double? textSize;
  final bool isEnable;
  final double? padding;
  final FontWeight? fontWeight;
  final Icon? icon;

  CommonButton(
      {Key? key,
        required this.label,
        required this.onTap,
        this.bgColor,
        this.labelColor,
        this.borderColor,
        this.borderRadius,
        this.height,
        this.width,
        this.padding,
        this.isEnable = true,
        this.fontWeight,
        this.icon,
        this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height??48,
      width: width??double.infinity,
      child: ElevatedButton(
        onPressed: isEnable?onTap:null,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0.0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius??10),
                side: BorderSide(color: !isEnable ? Constant.clrGrey : borderColor ?? bgColor ?? Constant.navy)),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(!isEnable ? Constant.clrGrey:bgColor ?? Constant.navy),
        ),
        child: Ink(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)),
          child: Container(
              padding: EdgeInsets.symmetric(horizontal:padding??0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // icon:Icon(icon),
                  Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize:16,
                        color: labelColor ,
                        fontWeight: fontWeight ?? FontWeight.bold),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class backArrow extends StatelessWidget {
  const backArrow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 49,
      left: 16, child: InkWell(
        child:Icon(Icons.subdirectory_arrow_left,color: Colors.white,),
        onTap:() {Navigator.pop(context);   }),
    );
  }
}