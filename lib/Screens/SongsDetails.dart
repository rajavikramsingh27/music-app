
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/Constant/Constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/Screens/Music/Music.dart';
import 'package:music_app/Screens/Music/MusicDetails.dart';


class SongsDetails extends StatefulWidget {
  @override
  _SongsDetailsState createState() => _SongsDetailsState();
}

class _SongsDetailsState extends State<SongsDetails> {
  var arrTitles = ['Suggested','Next For Play',];
  List<bool> arrSelected = List<bool>();

  bool isLyrics = false;

  var arrIcons = [
    Icons.thumb_up,
    Icons.thumb_down,
    Icons.cloud_download_rounded,
    Icons.share
  ];

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
    var widthPlayingSongsThumbnail = MediaQuery.of(context).size.width;
    var heightPlayingSongsThumbnail = (9*MediaQuery.of(context).size.width)/16;

    return Scaffold(
        backgroundColor:themeColor,
        appBar:AppBar(
          elevation:0,
          backgroundColor:themeColor,
          brightness:Brightness.dark,
          title:Text(
            'Song Details',
            style:TextStyle(
                color:Colors.white,
                fontSize:24,
                fontFamily:'times-new-roman'
            ),
          ),
        ),
        body:Column(
          children: [
            Container(
                width:widthPlayingSongsThumbnail,
                height:heightPlayingSongsThumbnail,
                child:Stack(
                  children: [
                    Positioned(
                        child:Image.asset(
                          'assets/six-million-views.jpg',
                          fit:BoxFit.fill,
                        ),
                      top:0,bottom:0,
                      left:0,right:0,
                    ),
                    Positioned(
                      top:0,bottom:0,
                      left:0,right:0,
                      child:Container(
                        color:Colors.black.withOpacity(0.4),
                        child:Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          crossAxisAlignment:CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children:[
                                ButtonTheme(
                                  minWidth:2.0,
                                  child:FlatButton(
                                    // textColor:Colors.white,
                                    child:SvgPicture.asset(
                                      'assets/repeat.svg',
                                      color:Colors.white,
                                      height:iconSize,
                                    ),
                                    padding:EdgeInsets.all(0),
                                    onPressed:() {
                                      print('object');
                                    },
                                  ),
                                ),
                                SizedBox(width:10),
                                ButtonTheme(
                                  minWidth:2.0,
                                  child:FlatButton(
                                    // textColor:Colors.white,
                                    child:Icon(
                                      Icons.skip_previous,
                                      color:Colors.white,
                                      size:iconSize+16,
                                    ),
                                    padding:EdgeInsets.all(0),
                                    onPressed:() {
                                      print('object');
                                    },
                                  ),
                                ),
                                SizedBox(width:10),
                                ButtonTheme(
                                  minWidth:2.0,
                                  child:FlatButton(
                                    // textColor:Colors.white,
                                    child:Icon(
                                      Icons.pause_circle_filled,
                                      color:Colors.white,
                                      size:iconSize+16,
                                    ),
                                    padding:EdgeInsets.all(0),
                                    // color:Colors.white,
                                    onPressed:() {
                                      print('object');
                                    },
                                  ),
                                ),
                                SizedBox(width:10),
                                ButtonTheme(
                                  minWidth:2.0,
                                  child:FlatButton(
                                    // textColor:Colors.white,
                                    child:Icon(
                                      Icons.skip_next,
                                      color:Colors.white,
                                      size:iconSize+16,
                                    ),
                                    padding:EdgeInsets.all(0),
                                    // color:Colors.white,
                                    // elevation:0,
                                    onPressed:() {
                                      print('object');
                                    },
                                  ),
                                ),
                                SizedBox(width:10),
                                ButtonTheme(
                                  minWidth:2.0,
                                  child:FlatButton(
                                    // textColor:Colors.white,
                                    child:SvgPicture.asset(
                                      'assets/lyrics.svg',
                                      color:Colors.white,
                                      height:iconSize,
                                    ),
                                    padding:EdgeInsets.all(0),
                                    // color:Colors.white,
                                    // elevation:0,
                                    onPressed:() {
                                      isLyrics = !isLyrics;

                                      setState(() {

                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:16),
                            Visibility(
                              visible:isLyrics,
                              child:Expanded(
                                child:Padding(
                                    padding:EdgeInsets.only(left:16,right:16,bottom:10),
                                    child:SingleChildScrollView(
                                      child:Text(
                                        "Dhoom dhoom come and light my fire"
                                            "Dhoom dhoom let me take you higher"
                                            "Dhoom dhoom I wanna feel that burnin'"
                                            "Dhoom dhoom it's a wild emotion"
                                            "Dhoom dhoom passion and devotion"
                                            "Dhoom dhoom now the wheels are turnin'"
                                            "Move your body close to mine now"
                                            "Let me feel your love divine now"
                                            "Together we'll explode and we'll go boom boom boom"
                                            "Dhoom machale Dhoom machale Dhoom"
                                            "Dhoom machale Dhoom machale Dhoom"
                                            "Dhoom machale Dhoom machale Dhoom"
                                            "Dhoom machale Dhoom machale Dhoom"
                                            "Dhoom dhoom I'm gonna make you sweat now"
                                            "Dhoom dhoom let's get all wet now"
                                            "Dhoom dhoom gotta get down on it"
                                            "Dhoom dhoom till the early morning"
                                            "Dhoom dhoom until the dawning"
                                            "Dhoom dhoom I know that you want it"
                                            "Shake your body down to the ground"
                                            "Once you on there's no turnin' round"
                                            "Tonight we're gonna make…",
                                        style:TextStyle(
                                            color:Colors.white,
                                            fontSize:16,
                                            fontFamily:'times-new-roman'
                                        ),
                                      ),
                                    )
                                )
                            ),
                            )
                          ],
                        )
                      ),
                    ),
                  ],
                )
            ),
            Container(
              margin:EdgeInsets.only(left:16,right:16,),
              padding:EdgeInsets.only(top:10),
              decoration:BoxDecoration(
                  border:Border(
                      top:BorderSide(
                        color:Colors.red,
                        width:3,
                      )
                  )
              ),
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '02:22',
                        style:TextStyle(
                            color:Colors.white,
                            fontSize:18,
                            fontWeight:iconFontWeight,
                            fontFamily:'times-new-roman'
                        ),
                      ),
                      Text(
                        '5:00',
                        style:TextStyle(
                            color:Colors.white,
                            fontSize:18,
                            fontWeight:iconFontWeight,
                            fontFamily:'times-new-roman'
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height:10),
            Container(
              padding:EdgeInsets.only(top:16,bottom:0),
              decoration:BoxDecoration(
                  border:Border(
                      // bottom:BorderSide(
                      //   color:Colors.white,
                      //   width:0.5,
                      // ),
                      top:BorderSide(
                        color:Colors.white,
                        width:0.5,
                      )
                  )
              ),
              child:rowSongsBottom()
            ),
            SizedBox(height:10),
            Container(
                height:50,
                padding:EdgeInsets.only(top:10,bottom:0),
                decoration:BoxDecoration(
                    border:Border(
                        bottom:BorderSide(
                          color:Colors.white,
                          width:0.5,
                        ),
                        // top:BorderSide(
                        //   color:Colors.white,
                        //   width:0.5,
                        // )
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
                height:MediaQuery.of(context).size.height-56-122
                    -MediaQuery.of(context).padding.top-heightPlayingSongsThumbnail
                    -AppBar().preferredSize.height,
                margin:EdgeInsets.only(top:0),
                child:songsList(EdgeInsets.only(bottom:20,top:20))
            )
          ],
        ),
    );
  }
}
