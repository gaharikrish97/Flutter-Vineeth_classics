import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/dummydata.dart';
import '../models/dummydata.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class Mealdetails extends StatefulWidget {
  static const routeName="/meal-detail";
  final String url;
  final bool abc;

  const Mealdetails({Key key, this.url,this.abc}) : super(key: key);

  
  @override
  State<Mealdetails> createState() => _MealdetailsState(this.url);
}

class _MealdetailsState extends State<Mealdetails> {
  YoutubePlayerController _controller;
  final String url;
  final bool abc=false;

  _MealdetailsState(this.url);
 
  void runYoutubePlayer(link){
    
   
    _controller=YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(link),
      flags: YoutubePlayerFlags(
        enableCaption: false,
        isLive: true,
        autoPlay: false,
        
      )
    );
  }

  void infonav(BuildContext context,title,char){  
     Navigator.of(context).pushNamed('/info',arguments:[title,char]);
   }
   void otherinfonav(BuildContext context,title){  
     Navigator.of(context).pushNamed('/other',arguments:title);
     print(title);
   }

  // @override
  // void initState(){
  //   final link='https://www.youtube.com/watch?v=48tqyDA5Sb0';
  //   //final mealid=ModalRoute.of(context).settings.arguments as List<String>;
  //   runYoutubePlayer(link);
  //   super.initState();
    
  // }
  // @override
  // void deactivate(){
  //   _controller.pause();
  //   super.deactivate();
  // }
  // @override
  // void dispose(){
  // _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final mealid=ModalRoute.of(context).settings.arguments as List<String>;
    
    final selmeals=vineeth_movies.firstWhere((meal) => meal.title == mealid[1],orElse: () => null);
    final sellink=mealid[2];
    runYoutubePlayer(sellink);
    
    //print(selmeals.id);
    return Scaffold(
      appBar:AppBar(title:Text(mealid[1])),
      body: SingleChildScrollView(
        child: Column(children:<Widget>[
        //Container(height: 200,width: double.infinity,child: Image.network(selmeals.imageUrl,fit: BoxFit.cover,),),
        Container(
          height: 200,
          
            child: YoutubePlayer(
              controller: _controller,
            ),
          
        ),
        
      
        ///////////////////
        Container(padding: EdgeInsets.symmetric(vertical: 10),child:Text('Cast',style:Theme.of(context).textTheme.subtitle1,),),
        Container(decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      
        ),
        margin: EdgeInsets.all(5),
        padding:EdgeInsets.all(5),
        height:150,width: 350,child: ListView.builder(
          itemBuilder: (ctx,index) => Card(
            color: Colors.pink[100],
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              child: Text(selmeals.cast[index],style: TextStyle(fontWeight:FontWeight.bold),),
            ),
          ),
          itemCount: selmeals.cast.length,
          ),),
          Container(padding: EdgeInsets.symmetric(vertical: 5),child:Text('Summary',style:Theme.of(context).textTheme.subtitle1,),),
          Container(decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      
        ),
        margin: EdgeInsets.all(5),
        padding:EdgeInsets.all(5),
        height:100,width: 350,child: ListView.builder(
          itemBuilder: (ctx,index) => Card(
            color: Colors.pink[100],
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              child: Text(selmeals.plot[index],style: TextStyle(fontWeight:FontWeight.bold),),
            ),
          ),
          itemCount: selmeals.plot.length,
          ),),
          Container(padding: EdgeInsets.symmetric(vertical: 5),child:Text('Audio Jukebox',style:Theme.of(context).textTheme.subtitle1,),),
          
          if(mealid[1]=='Hridayam') Container(
            child:Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [RaisedButton(color: Colors.pink[100],shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),),child: Text('Side A'),onPressed: () => {this.infonav(context,mealid[1],'A')},),
                      RaisedButton(color: Colors.pink[100],shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),),child: Text('Side B'),onPressed: () => {this.infonav(context,mealid[1],'B')},)
                      ],
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
          ),
            )),
            if(mealid[1]!='Hridayam') Container(
            child:Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [RaisedButton(color: Colors.pink[100],shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),),child: Text('Music'),onPressed: () => {this.otherinfonav(context,mealid[1])},),
                    
                      ],
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
          ),
            )),
           
        ],),
      ));
  }
}