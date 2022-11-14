import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../screens/meal_details.dart';
class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String IMDb;
  final String director;
  final String producer;
  final String trailer;
  final String genre;
  final String composer;
  final int duration;
  MealItem({this.id,this.title,this.imageUrl,this.trailer,this.director,this.producer,this.IMDb,this.composer,this.genre,this.duration});
   
   void selectmeal(BuildContext context){
     Navigator.of(context).pushNamed(Mealdetails.routeName,arguments: [this.id,this.title,this.trailer]);
     //print(this.trailer);
   }
   

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap:() => selectmeal(context),
          child:Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 4,
            margin: EdgeInsets.all(10),
            child:Column(children: <Widget>[
              Stack(children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(15),
                    topRight:Radius.circular(15),
                  ),
                  child: Image.network(imageUrl,height: 250,width: double.infinity,fit: BoxFit.cover)
                ),
                // Positioned(
                //   bottom: 10,
                //   right: 30,
                //   child: Container(
                //     width: 300,
                //     color: Colors.black54,
                //     padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                //     child: Text(this.title,textAlign: TextAlign.center,style: TextStyle(
                //       fontSize: 26,
                //       color: Colors.white,
                      
                //     ),
                //     softWrap: true,
                //     overflow: TextOverflow.fade,
                //     ),
                //   ),
                // )
              ],),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Center(child: Text('Directed By: ${this.director}',textAlign: TextAlign.center,style:TextStyle(fontWeight: FontWeight.bold),)),
                  //Text('Produced By: Visakh Subramaniam')
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Center(child: Text('Produced By: ${this.producer}',textAlign: TextAlign.center,style:TextStyle(fontWeight: FontWeight.bold))),
                  //Text('Produced By: Visakh Subramaniam')
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Center(child: Text('Music By: ${this.composer}',textAlign: TextAlign.center,style:TextStyle(fontWeight: FontWeight.bold))),
                  //Text('Produced By: Visakh Subramaniam')
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children:<Widget> [
                  Row(children:<Widget>[
                    Icon(Icons.schedule),
                    SizedBox(width: 6,),
                    Text('${this.duration} min')
                  ],),
                  Row(children:<Widget>[
                    Icon(Icons.work),
                    SizedBox(width: 6,),
                    //Text(complexitytest)
                     Text(this.genre)
                  ],),
                  Row(children:<Widget>[
                    //Icon(Icons.attach_money),
                    SizedBox(width: 6,),
                    //Text(affordabilitytest)
                     Text('IMDb: ${this.IMDb}')
                  ],)
                  
                ],),
              )
            ],) ,
          ),
          

        ),
       
      ],
    );
    
  }
}