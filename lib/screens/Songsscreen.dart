import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/meal.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../models/dummydata.dart';
class Songsscreen extends StatefulWidget {
  

  @override
  State<Songsscreen> createState() => _SongsscreenState();
}

class _SongsscreenState extends State<Songsscreen> {
  YoutubePlayerController _controller;
  
  final List<String> jaduration=other_jukebox[0].time;
  final List<String>jasingers=other_jukebox[0].singers;
  final List<String>jalyrics=other_jukebox[0].lyrics;
  final List<String> jasongs=other_jukebox[0].songs;

  final List<String> tduration=other_jukebox[1].time;
  final List<String>tsingers=other_jukebox[1].singers;
  final List<String>tlyrics=other_jukebox[1].lyrics;
  final List<String> tsongs=other_jukebox[1].songs;

  final List<String> tmduration=other_jukebox[2].time;
  final List<String>tmsingers=other_jukebox[2].singers;
  final List<String>tmlyrics=other_jukebox[2].lyrics;
  final List<String> tmsongs=other_jukebox[2].songs;

  final List<String> mcduration=other_jukebox[3].time;
  final List<String>mcsingers=other_jukebox[3].singers;
  final List<String>mclyrics=other_jukebox[3].lyrics;
  final List<String> mcsongs=other_jukebox[3].songs;



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
  @override
  Widget build(BuildContext context) {
    final routeargs=ModalRoute.of(context).settings.arguments as String;
    if(routeargs=='Jacobinte Swargarajyam') runYoutubePlayer('https://www.youtube.com/watch?v=xTtAVUq9000');
    if(routeargs=='Thira') runYoutubePlayer('https://www.youtube.com/watch?v=6wMcgQdBiGo');
    if(routeargs=='Thattathin Marayathu') runYoutubePlayer('https://www.youtube.com/watch?v=qdQwD0_dZdc');
    if(routeargs=='Malarvaadi Arts Club') runYoutubePlayer('https://www.youtube.com/watch?v=KWlfWAIDG9g');
    return Scaffold(
      appBar: AppBar(title:Text('Audio Jukebox')),
      body: SingleChildScrollView(
        child: Column(children:<Widget>[
          Container(
            height: 230,
            
              child: YoutubePlayer(
                controller: _controller,
              ),
            
          ),
          Container(padding: EdgeInsets.symmetric(vertical: 10),child:Text('Song List',style:Theme.of(context).textTheme.subtitle1,),),
          if(routeargs=='Jacobinte Swargarajyam') Container(decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      
        ),
        margin: EdgeInsets.all(5),
        padding:EdgeInsets.all(5),
        height:350,width: 330,child: ListView.builder(
          
          itemBuilder: (ctx,index) => ListTile(
            leading: CircleAvatar(child: Text('#${index+1}'),foregroundColor: Colors.black,backgroundColor:  Colors.pink[200],),
            title: Text(this.jasongs[index],style: TextStyle(fontWeight:FontWeight.w600,fontSize: 15)),
            trailing: Text(this.jaduration[index]),
            subtitle: RichText(
            text: TextSpan(
            style: TextStyle(color: Colors.black), //apply style to all
            children: [
            TextSpan(text: 'Singers: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
            TextSpan(text: this.jasingers[index], style: TextStyle(fontSize: 12,color: Colors.black)),
            TextSpan(text: '\nLyrics: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
            TextSpan(text: this.jalyrics[index], style: TextStyle(fontSize: 12,color: Colors.black)),
           
        ]
          )
      ),
          isThreeLine: true,       
          ),       
          itemCount: 5,       
          ),
          ),
          //2nd song
          if(routeargs=='Thira') Container(decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      
        ),
        margin: EdgeInsets.all(5),
        padding:EdgeInsets.all(5),
        height:350,width: 330,child: ListView.builder(
          
          itemBuilder: (ctx,index) => ListTile(
            leading: CircleAvatar(child: Text('#${index+1}'),foregroundColor: Colors.black,backgroundColor:  Colors.pink[200],),
            title: Text(this.tsongs[index],style: TextStyle(fontWeight:FontWeight.w600,fontSize: 15)),
            trailing: Text(this.tduration[index]),
            subtitle: RichText(
            text: TextSpan(
            style: TextStyle(color: Colors.black), //apply style to all
            children: [
            TextSpan(text: 'Singers: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
            TextSpan(text: this.tsingers[index], style: TextStyle(fontSize: 12,color: Colors.black)),
            TextSpan(text: '\nLyrics: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
            TextSpan(text: this.tlyrics[index], style: TextStyle(fontSize: 12,color: Colors.black)),
           
        ]
          )
      ),
          isThreeLine: true,       
          ),       
          itemCount: 5,       
          ),
          ),
          //3rd song
          if(routeargs=='Thattathin Marayathu') Container(decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      
        ),
        margin: EdgeInsets.all(5),
        padding:EdgeInsets.all(5),
        height:350,width: 330,child: ListView.builder(
          
          itemBuilder: (ctx,index) => ListTile(
            leading: CircleAvatar(child: Text('#${index+1}'),foregroundColor: Colors.black,backgroundColor:  Colors.pink[200],),
            title: Text(this.tmsongs[index],style: TextStyle(fontWeight:FontWeight.w600,fontSize: 15)),
            trailing: Text(this.tmduration[index]),
            subtitle: RichText(
            text: TextSpan(
            style: TextStyle(color: Colors.black), //apply style to all
            children: [
            TextSpan(text: 'Singers: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
            TextSpan(text: this.tmsingers[index], style: TextStyle(fontSize: 12,color: Colors.black)),
            TextSpan(text: '\nLyrics: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
            TextSpan(text: this.tmlyrics[index], style: TextStyle(fontSize: 12,color: Colors.black)),
           
        ]
          )
      ),
          isThreeLine: true,       
          ),       
          itemCount: 6,       
          ),
          ),
          //4th song
          if(routeargs=='Malarvaadi Arts Club') Container(decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      
        ),
        margin: EdgeInsets.all(5),
        padding:EdgeInsets.all(5),
        height:350,width: 330,child: ListView.builder(
          
          itemBuilder: (ctx,index) => ListTile(
            leading: CircleAvatar(child: Text('#${index+1}'),foregroundColor: Colors.black,backgroundColor:  Colors.pink[200],),
            title: Text(this.mcsongs[index],style: TextStyle(fontWeight:FontWeight.w600,fontSize: 15)),
            trailing: Text(this.mcduration[index]),
            subtitle: RichText(
            text: TextSpan(
            style: TextStyle(color: Colors.black), //apply style to all
            children: [
            TextSpan(text: 'Singers: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
            TextSpan(text: this.mcsingers[index], style: TextStyle(fontSize: 12,color: Colors.black)),
            TextSpan(text: '\nLyrics: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
            TextSpan(text: this.mclyrics[index], style: TextStyle(fontSize: 12,color: Colors.black)),
           
        ]
          )
      ),
          isThreeLine: true,       
          ),       
          itemCount: 7,       
          ),
          ),
        ]),
      )
    );
  }
}