import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../models/dummydata.dart';
class Infoscreen extends StatefulWidget {
 

  @override
  State<Infoscreen> createState() => _InfoscreenState();
}

class _InfoscreenState extends State<Infoscreen> {
  final List<String> Asongs=jukebox_songsA[0].songs;
  
  final List<String> Aduration=jukebox_songsA[0].time;
  final List<String>Asingers=jukebox_songsA[0].singers;
  final List<String>Alyrics=jukebox_songsA[0].lyrics;
  final List<String> Bsongs=jukebox_songsB[0].songs;
  
  final List<String> Bduration=jukebox_songsB[0].time;
  final List<String>Bsingers=jukebox_songsB[0].singers;
  final List<String>Blyrics=jukebox_songsB[0].lyrics;
  
  YoutubePlayerController _controller;
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
    final routeargs=ModalRoute.of(context).settings.arguments as List<dynamic>;
   final side=routeargs[1];
   
    if(side=='A') runYoutubePlayer('https://www.youtube.com/watch?v=O4MbPyPylE4');
    if(side=='B') runYoutubePlayer('https://www.youtube.com/watch?v=DH1tVM4yOcU');
    return Scaffold(
      appBar: AppBar(title:Text('Audio Jukebox'+" "+'Side '+routeargs[1])),
      body: Column(children:<Widget>[
        //Container(height: 200,width: double.infinity,child: Image.network(selmeals.imageUrl,fit: BoxFit.cover,),),
        Container(
          height: 200,
          
            child: YoutubePlayer(
              controller: _controller,
            ),
          
        ),
        Container(padding: EdgeInsets.symmetric(vertical: 10),child:Text('Song List',style:Theme.of(context).textTheme.subtitle1,),),
        if(side=='A') Container(decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey)

      ),
      margin: EdgeInsets.all(5),
      padding:EdgeInsets.all(5),
      height:400,width: 330,child: ListView.builder(
        
        itemBuilder: (ctx,index) => ListTile(
          leading: CircleAvatar(child: Text('#${index+1}'),foregroundColor: Colors.black,backgroundColor:  Colors.pink[200],),
          title: Text(this.Asongs[index],style: TextStyle(fontWeight:FontWeight.w600,fontSize: 15)),
          trailing: Text(this.Aduration[index]),
          subtitle: RichText(
          text: TextSpan(
          //style: TextStyle(color: Colors.black), //apply style to all
          children: [
          TextSpan(text: 'Singers: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          TextSpan(text: this.Asingers[index], style: TextStyle(fontSize: 12,color: Colors.black)),
          TextSpan(text: '\nLyrics: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          TextSpan(text: this.Alyrics[index], style: TextStyle(fontSize: 12,color: Colors.black)),
         
      ]
    )
),
isThreeLine: true,
          
        
        ),
        
        
        
        
        
        itemCount: 7,
        
        ),
        ),
        if(side=='B') Container(decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey)

      ),
      margin: EdgeInsets.all(5),
      padding:EdgeInsets.all(5),
      height:400,width: 330,child: ListView.builder(
        
        itemBuilder: (ctx,index) => ListTile(
          leading: CircleAvatar(child: Text('#${index+1}'),foregroundColor: Colors.black,backgroundColor:  Colors.pink[200],),
          title: Text(this.Bsongs[index],style: TextStyle(fontWeight:FontWeight.w600,fontSize: 15)),
          trailing: Text(this.Bduration[index]),
          subtitle: RichText(
          text: TextSpan(
          //style: TextStyle(color: Colors.black), //apply style to all
          children: [
          TextSpan(text: 'Singers: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          TextSpan(text: this.Bsingers[index], style: TextStyle(fontSize: 12,color: Colors.black)),
          TextSpan(text: '\nLyrics: ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          TextSpan(text: this.Blyrics[index], style: TextStyle(fontSize: 12,color: Colors.black)),
         
      ]
    )
),
isThreeLine: true,

          
        
        ),
        
        
        
        
        
        itemCount: 8,
        
        ),
        ),
      ]),
    );

  }
}