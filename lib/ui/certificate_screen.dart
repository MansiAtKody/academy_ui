import 'package:flutter/material.dart';
class Certificate extends StatefulWidget {
  const Certificate({Key? key}) : super(key: key);

  @override
  _CertificateState createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top:182),
            padding: EdgeInsets.only(left: 16),
            child: Text("Congrats! You're certified",style:TextStyle(fontSize: 20),),
          ),
          Container(
            margin: EdgeInsets.only(top:21),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 402,
                height: 286,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/Images/certificate.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
