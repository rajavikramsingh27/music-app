

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/Constant/Constant.dart';
import 'package:music_app/Screens/Music/MusicDetails.dart';


double iconSize = 20.0;
double fontSizeBottomSongsDetails = 14.0;
Color iconColor = Colors.white;
FontWeight iconFontWeight = FontWeight.w500;

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  var arrTitles = ['Songs Feed','Album','Recent History','Saved'];
  List<bool> arrSelected = List<bool>();

  bool isAlbum = false;

  @override
  void initState() {
    for (var i=0; i<arrTitles.length;i++) {
      if (i == 0) {
        arrSelected.add(true);
      } else {
        arrSelected.add(false);
      }
    }

    Future.delayed(Duration(seconds:1), () {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:themeColor,
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child:AppBar(
          elevation:0,
          backgroundColor:themeColor,
          brightness:Brightness.dark,
        ),
      ),
      body:Stack(
        children: [
          Column(
            children: [
              SizedBox(height:20),
              Container(
                  height:36,
                  // padding:EdgeInsets.only(left:16,right:16),
                  decoration:BoxDecoration(
                      border:Border(
                          bottom:BorderSide(
                            color:Colors.white,
                            width:1,
                          )
                      )
                  ),
                  child:ListView.builder(
                      padding:EdgeInsets.only(left:16,right:16),
                      scrollDirection:Axis.horizontal,
                      itemCount:arrTitles.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          child:Container(
                            margin:EdgeInsets.only(left:10,right:10),
                            decoration:BoxDecoration(
                                border:Border(
                                    bottom:BorderSide(
                                        color:arrSelected[index] ? greenColor : Colors.transparent,
                                        width:3
                                      // arrSelected[index] ? 3 : 0,
                                    )
                                )
                            ),
                            child:Text(
                              arrTitles[index],
                              style:TextStyle(
                                  color:arrSelected[index] ? greenColor : Colors.white,
                                  fontSize:17,
                                  fontFamily:'times-new-roman'
                              ),
                            ),
                          ),
                          onTap:() {
                            for (var i=0; i<arrTitles.length;i++) {
                              if (i.toInt() == index.toInt()) {
                                arrSelected[i] = true;
                                isAlbum = (i == 1) ? true : false;
                              } else {
                                arrSelected[i] = false;
                              }
                            }

                            setState(() {

                            });
                          },
                        );
                      }
                  )
              ),
              Container(
                  height:MediaQuery.of(context).size.height-56
                      -MediaQuery.of(context).padding.top,
                  margin:EdgeInsets.only(top:0),
                  child:isAlbum
                      ? albumList(EdgeInsets.only(bottom:200,top:20))
                      : songsList(EdgeInsets.only(bottom:200,top:20))
              )
            ],
          ),
          Positioned(
            bottom:0,
              child:Container(
                width:MediaQuery.of(context).size.width,
                padding:EdgeInsets.only(left:16,right:0,top:16,bottom:16),
                decoration:BoxDecoration(
                    color:Colors.white,
                    border:Border(
                        top:BorderSide(
                          color:Colors.red,
                          width:4,
                        )
                    )
                ),
                child:Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration:BoxDecoration(
                          color:themeColor,
                          borderRadius:BorderRadius.circular(3)
                      ),
                      child:Icon(
                        Icons.person,
                        color:Colors.white,
                        size:70,
                      ),
                    ),
                    SizedBox(width:10),
                    Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width-120,
                          child:Text(
                            'Temporary Pyar',
                            textAlign:TextAlign.center,
                            style:TextStyle(
                                color:themeColor,
                                fontSize:20,
                                fontWeight:FontWeight.w500,
                                fontFamily:'times-new-roman'
                            ),
                          ),
                        ),
                        SizedBox(height:5),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          crossAxisAlignment:CrossAxisAlignment.center,
                          children: [
                            ButtonTheme(
                              minWidth:2.0,
                              child:FlatButton(
                                textColor:Colors.white,
                                child:Icon(
                                  Icons.skip_previous,
                                  color:themeColor,
                                  size:50,
                                ),
                                padding:EdgeInsets.all(0),
                                color:Colors.white,
                                onPressed:() {
                                  print('object');
                                },
                              ),
                            ),
                            SizedBox(width:10),
                            ButtonTheme(
                              minWidth:2.0,
                              child:FlatButton(
                                textColor:Colors.white,
                                child:Icon(
                                  Icons.pause_circle_filled,
                                  color:themeColor,
                                  size:50,
                                ),
                                padding:EdgeInsets.all(0),
                                color:Colors.white,
                                onPressed:() {
                                  print('object');
                                },
                              ),
                            ),
                            SizedBox(width:10),
                            ButtonTheme(
                              minWidth:2.0,
                              child:FlatButton(
                                textColor:Colors.white,
                                child:Icon(
                                  Icons.skip_next,
                                  color:themeColor,
                                  size:50,
                                ),
                                padding:EdgeInsets.all(0),
                                color:Colors.white,
                                // elevation:0,
                                onPressed:() {
                                  print('object');
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
          )
          )
        ],
      )
    );
  }
}
