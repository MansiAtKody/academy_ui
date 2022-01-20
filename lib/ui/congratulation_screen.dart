import 'package:academy/utils/theme_const.dart';
import 'package:flutter/material.dart';
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
            width: 393,
            height: 181,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/Images/glitter.png"                    ),
                    fit: BoxFit.cover
                )
            ),
          ),
          Container(
            width: 393,
            height: 181,
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
                width: 105.0,
                height: 99.16,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/Images/done.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
          ),
Container(
  padding: EdgeInsets.symmetric(vertical: 26),
  child: Column(children: [
  Text("Congratulations!",style:TextStyle(fontSize: 24),),
  Text("You've successfully passed",style:TextStyle(fontSize: 24)),

],),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:24.0),
            child: Text("Your scores are",style:TextStyle(fontSize: 16)),
          ),
          Container(
            height: 126,
            width: 126,
            decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.green,width: 8),color: Colors.white),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '100%',
                  style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold)             ),
            ),          )


        ],
      ) ,
    );
  }
}
