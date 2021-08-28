
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/Screens/SongsDetails.dart';
import 'package:music_app/Screens/Music/Music.dart';
import 'package:music_app/Screens/SongsList.dart';

ListView albumList(EdgeInsets padding) {
  return ListView.builder(
      padding:padding,
      scrollDirection:Axis.vertical,
      itemCount:20,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child:Container(
            width:MediaQuery.of(context).size.width,
            // height:100,
            margin:EdgeInsets.only(left:16,right:16,top:8,bottom:8),
            padding:EdgeInsets.only(left:16,right:16,top:16,bottom:16),
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(6),
                border:Border.all(
                    color:Colors.white,
                    width:1
                )
            ),
            child:Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/six-million-views.jpg',
                      fit:BoxFit.cover,
                      height:54,
                      width:54,
                    ),
                    SizedBox(width:20,),
                    Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sultan',
                          style:TextStyle(
                              color:Colors.white,
                              fontSize:20,
                              fontWeight:iconFontWeight,
                              fontFamily:'times-new-roman'
                          ),
                        ),
                        Text(
                          '6 Songs',
                          style:TextStyle(
                              color:Colors.white,
                              fontSize:15,
                              fontWeight:iconFontWeight,
                              fontFamily:'times-new-roman'
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height:16),
                rowSongsBottom()
              ],
            )
          ),
          onTap:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SongsList()),
            );
          },
        );
      }
  );
}

ListView songsList(EdgeInsets padding) {
  return ListView.builder(
      padding:padding,
      scrollDirection:Axis.vertical,
      itemCount:20,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child:Container(
              width:MediaQuery.of(context).size.width,
              padding:EdgeInsets.only(left:16,right:16,top:16,bottom:16),
              decoration:BoxDecoration(
                  border:Border(
                      bottom:BorderSide(
                          color:Colors.white,
                          width:1
                        // arrSelected[index] ? 3 : 0,
                      )
                  )
              ),
              child:Column(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Container(
                        width:MediaQuery.of(context).size.width-132,
                        child:Text(
                          'Temporary Pyar / kaka / 2Darling / Adaab / Kharod / Anjali / Arora / New Punjabi Songs',
                          style:TextStyle(
                              color:Colors.white,
                              fontSize:16,
                              fontFamily:'times-new-roman'
                          ),
                        ),
                      ),
                      Container(
                        decoration:BoxDecoration(
                            color:Colors.white,
                            borderRadius:BorderRadius.circular(3)
                        ),
                        child:Icon(
                          Icons.person,
                          color:Colors.green,
                          size:54,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height:10),
                  rowSongsBottom()
                ],
              )
          ),
          onTap:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SongsDetails()),
            );
          },
        );
      }
  );
}

Row rowSongsBottom() {
  return Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    crossAxisAlignment:CrossAxisAlignment.start,
    children:[
      ButtonTheme(
        minWidth:2.0,
        child:RaisedButton(
          child:Column(
            children: [
              SvgPicture.asset(
                'assets/listen.svg',
                color:Colors.white,
                height:iconSize,
              ),
              SizedBox(height:5),
              Text(
                '10k',
                style:TextStyle(
                    color:Colors.white,
                    fontSize:14,
                    fontWeight:iconFontWeight,
                    fontFamily:'times-new-roman'
                ),
              ),
            ],
          ),
          padding:EdgeInsets.all(0),
          color:Colors.transparent,
          onPressed:() {
            print('object');
          },
        ),
      ),
      ButtonTheme(
        minWidth:2.0,
        child:RaisedButton(
          child:Column(
            children: [
              SvgPicture.asset(
                'assets/youtube.svg',
                color:Colors.white,
                height:iconSize,
              ),
              SizedBox(height:5),
              Text(
                '10k',
                style:TextStyle(
                    color:Colors.white,
                    fontSize:fontSizeBottomSongsDetails,
                    fontFamily:'times-new-roman',
                    fontWeight:iconFontWeight
                ),
              ),
            ],
          ),
          padding:EdgeInsets.all(0),
          color:Colors.transparent,
          onPressed:() {
            print('object');
          },
        ),
      ),
      ButtonTheme(
        minWidth:2.0,
        child:RaisedButton(
          child:Column(
            children: [
              Icon(
                Icons.thumb_up,
                color:iconColor,
                size:iconSize,
              ),
              SizedBox(height:5),
              Text(
                '10k',
                style:TextStyle(
                  color:Colors.white,
                  fontSize:fontSizeBottomSongsDetails,
                  fontFamily:'times-new-roman',
                  fontWeight:iconFontWeight,
                ),
              ),
            ],
          ),
          padding:EdgeInsets.all(0),
          color:Colors.transparent,
          onPressed:() {
            print('object');
          },
        ),
      ),
      ButtonTheme(
        minWidth:2.0,
        child:RaisedButton(
          child:Column(
            children: [
              Icon(
                Icons.thumb_down,
                color:iconColor,
                size:iconSize,
              ),
              SizedBox(height:5),
              Text(
                '10k',
                style:TextStyle(
                    color:Colors.white,
                    fontSize:fontSizeBottomSongsDetails,
                    fontFamily:'times-new-roman',
                    fontWeight:iconFontWeight
                ),
              ),
            ],
          ),
          padding:EdgeInsets.all(0),
          color:Colors.transparent,
          onPressed:() {
            print('object');
          },
        ),
      ),
      ButtonTheme(
        minWidth:2.0,
        child:RaisedButton(
          child:Column(
            children: [
              Icon(
                Icons.favorite_outlined,
                color:iconColor,
                size:iconSize,
              ),
              SizedBox(height:5),
              Text(
                '',
                style:TextStyle(
                    color:Colors.white,
                    fontSize:fontSizeBottomSongsDetails,
                    fontFamily:'times-new-roman',
                    fontWeight:iconFontWeight
                ),
              ),
            ],
          ),
          padding:EdgeInsets.all(0),
          color:Colors.transparent,
          onPressed:() {
            print('object');
          },
        ),
      ),
      ButtonTheme(
        minWidth:2.0,
        child:RaisedButton(
          child:Column(
            children: [
              Icon(
                Icons.cloud_download_rounded,
                color:iconColor,
                size:iconSize,
              ),
              SizedBox(height:5),
              Text(
                '',
                style:TextStyle(
                    color:Colors.white,
                    fontSize:fontSizeBottomSongsDetails,
                    fontFamily:'times-new-roman',
                    fontWeight:iconFontWeight
                ),
              ),
            ],
          ),
          padding:EdgeInsets.all(0),
          color:Colors.transparent,
          onPressed:() {
            print('object');
          },
        ),
      ),
      ButtonTheme(
        minWidth:2.0,
        child:RaisedButton(
          child:Column(
            children: [
              Icon(
                Icons.share,
                color:iconColor,
                size:iconSize,
              ),
              SizedBox(height:5),
              Text(
                '',
                style:TextStyle(
                    color:Colors.white,
                    fontSize:fontSizeBottomSongsDetails,
                    fontFamily:'times-new-roman',
                    fontWeight:iconFontWeight
                ),
              ),
            ],
          ),
          padding:EdgeInsets.all(0),
          color:Colors.transparent,
          onPressed:() {
            print('object');
          },
        ),
      ),
    ],
  );
}