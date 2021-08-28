import 'package:flutter/material.dart';
import 'package:music_app/Constant/Constant.dart';
import 'package:music_app/Screens/Music/Music.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}
//
class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds:3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Music()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child:AppBar(
            elevation:0,
            backgroundColor:themeColor,
            brightness:Brightness.dark,
          ),
      ),
      backgroundColor:themeColor,
      body:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          Container(
            width:MediaQuery.of(context).size.width,
            // height:160,
            child:Icon(
              Icons.library_music_sharp,
              color:Colors.white,
              size:200,
            ),
          )
        ],
      )
    );
  }
}
