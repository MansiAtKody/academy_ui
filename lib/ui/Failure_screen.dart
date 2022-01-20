import 'package:academy/ui/certificate_screen.dart';
import 'package:academy/ui/common_button.dart';
import 'package:flutter/material.dart';

import 'congratulation_screen.dart';
class Failure extends StatefulWidget {
  const Failure({Key? key}) : super(key: key);

  @override
  _FailureState createState() => _FailureState();
}

class _FailureState extends State<Failure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:204),

      child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 68.0,
              height: 105.16,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/Images/failure.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 26),
            child: Column(children: [
              Text("Oops!",style:TextStyle(fontSize: 24),),
              Text("You failed in the test",style:TextStyle(fontSize: 24)),

            ],),),

          Container(
            height: 38,
            width:290,
            child: Text("You have not scored the minimum requirement to complete the certification",style:TextStyle(fontSize: 16,),	textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:24),
            child: Text("Your scores are",style:TextStyle(fontSize: 16)),
          ),
          Container(
            height: 126,
            width: 126,
            decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.red,width: 8),color: Colors.white),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                  '60%',
                  style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold)       ),
            ),          )


        ],
      ) ,
        bottomNavigationBar:  Container(
         padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          child: CommonButton(
            label: "Try Again",
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Certificate()));
            }               ,
            borderRadius: 5,
            bgColor: Colors.white,
            labelColor: Colors.blue,
            textSize: 16,
            width: 170,
            borderColor: Colors.grey,
          ),
        ),
      );

  }
}
// CommonButton(label: "Try Agian", onTap: (){}),
// Text("Retry the training and complete certification",style:TextStyle(fontSize: 13,),	textAlign: TextAlign.center),

