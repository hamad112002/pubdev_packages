import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
// import 'package:badges/badges.dart' as badges;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';




void main(){
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,

        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("App Bar"),
        ),
        body:
         SafeArea(
          child:  Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PinCodeTextField(appContext:
                  context,
                      length: 3,
                  keyboardType: TextInputType.number,
                    obscureText: true,
                    obscuringCharacter: "*",
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      activeFillColor: Colors.red,
                      inactiveFillColor: Colors.green,
                      selectedColor: Colors.teal,
                      selectedFillColor: Colors.lightBlue,
                    ),


                  )
                ],
              ),
            ),
            // child: Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: <Widget>[
            //     SizedBox(width: 20.0, height: 100.0),
            //     Text(
            //       'Be',
            //       style: TextStyle(fontSize: 43.0),
            //     ),
            //     SizedBox(width: 20.0, height: 100.0),
            //     DefaultTextStyle(
            //       style: TextStyle(
            //         fontSize: 40.0,
            //         fontFamily: 'Horizon',
            //       ),
            //       child:  AnimatedTextKit(
            //         animatedTexts:   [
            //           RotateAnimatedText('AWESOME'),
            //           RotateAnimatedText('OPTIMISTIC'),
            //           RotateAnimatedText('DIFFERENT'),
            //         ],
            //         onTap: () {
            //           print("Tap Event");
            //         },
            //       ),
            //     ),
            //   ],
            // ),
          ),
        )

      )
    );
  }
}


