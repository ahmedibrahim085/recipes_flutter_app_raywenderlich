// TODO: Add buildRecipeCard() here
import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';

Widget recipeCard(Recipe recipe) {
  return Card(
    // 1
    elevation: 2.0,
    // 2
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    // 3
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      // 4
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageUrl)),
          // 5
          const SizedBox(
            height: 14.0,
          ),
          // 6
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          )
        ],
      ),
    ),
  );
}
