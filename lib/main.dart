import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class TopPlayer extends StatefulWidget {
  const TopPlayer({Key? key}) : super(key: key);
  @override
  State<TopPlayer> createState() => _TopPlayerState();
}

class _TopPlayerState extends State<TopPlayer> {

  void initState(){
    super.initState();

    Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacementNamed("HomePage");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Image(
                image:AssetImage("assets/firstPage.png"),
              width: 300,
            ),
            SizedBox(
              height: 50,
            ),
         SpinKitFadingCircle(
           color: Colors.greenAccent,
            size: 50.0,
    ),
            Padding(
              padding: const EdgeInsets.only(
                top: 90,
              ),
              child: Text("Versoin 1.0.0" , style: TextStyle(color:Colors.black),),
            )
          ],
        ),
      ),
    );
  }
}
