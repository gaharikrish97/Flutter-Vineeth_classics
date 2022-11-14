import 'package:flutter/material.dart';
import '../models/dummydata.dart';
import '../widgets/meal_item.dart';
import '../models//meal.dart';


class CategoriesMeals extends StatelessWidget {

  // final String id;
  //final String title='';

  // CategoriesMeals(this.id,this.title);
 

  @override
  Widget build(BuildContext context) {
    //final routeargs=ModalRoute.of(context).settings.arguments as Map<String,String>;
    final catname = 'Vineeth Classics';
    final catid = 'c1';
    final catmeals=vineeth_movies.where((meal){
      return meal.categories.contains(catid);
    }).toList();
    return Scaffold(
     
      body:Container(
        child: ListView.builder(itemBuilder: (ctx,index){
          return MealItem(
            id:catmeals[index].id,
            title:catmeals[index].title,
            imageUrl:catmeals[index].imageUrl,
            duration:catmeals[index].duration,
            genre:catmeals[index].genre,
            director:catmeals[index].director,
            composer: catmeals[index].composer,
            IMDb: catmeals[index].IMDb,
            trailer: catmeals[index].trailer,
            producer: catmeals[index].producer,
            );

        }, itemCount:catmeals.length),
      ),
      
      // bottomSheet:Row(mainAxisAlignment: MainAxisAlignment.center
      //   ,children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: Row(
      //         children: [
      //           Icon(Icons.copyright),
      //           Text('Hk',textAlign: TextAlign.center,),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),

    );
    
  }
}