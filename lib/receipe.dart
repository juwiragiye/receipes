import 'ingredient.dart';

class Receipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Receipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Receipe> samples = [
    Receipe(
      "Spaghetti and Meatballs",
      "assets/meat_balls.jpg",
      4,
      [
        Ingredient(
          1,
          'box',
          'Spaghetti',
        ),
        Ingredient(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
    Receipe(
      "Tomato Soup",
      "assets/tomato.jpg",
      2,
      [
        Ingredient(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
    ),
    Receipe(
      "Grilled Cheese",
      "assets/grilled_cheese.jpg",
      1,
      [
        Ingredient(
          2,
          'slices',
          'Cheese',
        ),
        Ingredient(
          2,
          'slices',
          'Bread',
        ),
      ],
    ),
    Receipe(
      "Chocolate Chip Cookies",
      "assets/chocolate_cookies.webp",
      24,
      [
        Ingredient(
          4,
          'cups',
          'flour',
        ),
        Ingredient(
          2,
          'cups',
          'sugar',
        ),
        Ingredient(
          0.5,
          'cups',
          'chocolate chips',
        ),
      ],
    ),
    Receipe(
      "Taco Salad",
      "assets/taco_salad.jpg",
      1,
      [
        Ingredient(
          4,
          'oz',
          'nachos',
        ),
        Ingredient(
          3,
          'oz',
          'taco meat',
        ),
        Ingredient(
          0.5,
          'cup',
          'cheese',
        ),
        Ingredient(
          0.25,
          'cup',
          'chopped tomatoes',
        ),
      ],
    ),
    Receipe(
      "Hawaiian Pizza",
      "assets/hawaiian.jpg",
      4,
      [
        Ingredient(
          1,
          'item',
          'pizza',
        ),
        Ingredient(
          1,
          'cup',
          'pineapple',
        ),
        Ingredient(
          8,
          'oz',
          'ham',
        ),
      ],
    ),
  ];
}
