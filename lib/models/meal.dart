enum Complexity{
  Simple,
  Challenging,
  Hard
}
enum Affordability{
  Affordable,
  Pricey,
  Luxurious
}

class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({this.id,this.title,this.imageUrl,this.categories,this.ingredients,this.steps,this.duration,
  this.complexity,this.affordability,this.isGlutenFree,this.isLactoseFree,this.isVegan,this.isVegetarian});
  
}
class vineeth {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final String director;
  final String producer;
  final String composer;
  final String IMDb;
  final int duration;
  final String genre;
  final String trailer;
  final List<String> cast;
  final List<String> plot;
  vineeth({this.id,this.title,this.imageUrl,this.trailer,this.categories,this.director,this.producer,this.composer,this.IMDb,this.duration,this.genre,this.cast,this.plot});



}

class jukebox{
  final List<String>songs;
  final List<String>singers;
  final String id;
  final List<String> time;
  final List<String> lyrics;
  jukebox({this.singers,this.songs,this.id,this.time,this.lyrics});
}