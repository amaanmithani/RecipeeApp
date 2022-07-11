import 'package:flutter/material.dart';
import 'package:flutter_app2/models/meal.dart';
import 'package:flutter_app2/widgets/meal_item.dart';
class FavoritesScreen extends StatelessWidget {

  final List<Meal> favoriteMeals;
  FavoritesScreen(this.favoriteMeals);


  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
      return Center(
        child: Text('You have no favorites yet'),
      );
    }
    else{
      return  ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            duration: favoriteMeals[index].duration,
            affordability: favoriteMeals[index].affordability,
            complexity: favoriteMeals[index].complexity,

          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
