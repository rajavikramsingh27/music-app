import 'package:flutter/material.dart';
import 'package:music_app/Constant/Constant.dart';
import 'package:music_app/Screens/Music/MusicDetails.dart';

class SongsList extends StatefulWidget {
  @override
  _SongsListState createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:themeColor,
      appBar:AppBar(
        elevation:0,
        backgroundColor:themeColor,
        brightness:Brightness.dark,
        title:Text(
          "Sultan's Songs",
          style:TextStyle(
              color:Colors.white,
              fontSize:24,
              fontFamily:'times-new-roman'
          ),
        ),
      ),
      body:songsList(EdgeInsets.only(top:16,bottom: 16)),
    );
  }
}
