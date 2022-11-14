import 'package:flutter/material.dart';
import '../models/dummydata.dart';
import '../models/categories.dart';
import '../widgets/category_item.dart';
import '../models//meal.dart';


class CategoriesScreen extends StatelessWidget {


 
  @override
  Widget build(BuildContext context) {
    return GridView(padding:EdgeInsets.all(15),children:DUMMY_CATEGORIES.map((dumdata) =>CategoryItem(dumdata.id,dumdata.title,dumdata.color) ).toList(),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent:200,
      childAspectRatio: 3 / 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      ),);
  }
}