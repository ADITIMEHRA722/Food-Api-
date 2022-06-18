

class Recipe {
 final String name;
 final String images;

final double rating;

final String totalTime;

Recipe({
  required this.images, 
  required this.name, 
  required this.rating ,
   required this.totalTime,
});

factory Recipe.fromJson(dynamic json){
  return Recipe(images: json['images'] [0] ['hostedLargeUrl'] as String,      
  name:  json['name'] as String,
   rating: json['rating'] as double,
    totalTime: json['totalTime'] as String );
}

static  List<Recipe> recipesFromSnapshot(List snapshot){
  return snapshot.map((data){
      return Recipe.fromJson(data);
    } ).toList();
}
@override
String toString(){
  return 'Recipe{images: $images, name: $name, rating: $rating, totalTime: $totalTime}';
}

}