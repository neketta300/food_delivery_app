import 'package:food_delivery_app/models/food.dart';

class Restaurant {
  final List<Food> _menu = [
    // burgers
    Food(
      availableAddons: [
        Addon(name: "Cheese", price: 0.33),
        Addon(name: "Tomato", price: 0.33),
        Addon(name: "Cucumber", price: 0.33),
        Addon(name: "Bacon", price: 0.49),
        Addon(name: "Avocado", price: 0.49),
      ],
      category: FoodCategory.burgers,
      image: "assets/images/burger/cheeseBurger.jpg",
      description:
          "A juicy beef with melted chedar, lettuce, tomato, a hiont of onion pcikle.",
      name: "Classic Cheeseburger",
      price: 0.99,
    ),
    Food(
      availableAddons: [
        Addon(name: "Cheese", price: 0.33),
        Addon(name: "Tomato", price: 0.33),
        Addon(name: "Cucumber", price: 0.33),
        Addon(name: "Bacon", price: 0.49),
        Addon(name: "Avocado", price: 0.49),
      ],
      category: FoodCategory.burgers,
      image: "assets/images/burger/steakBurger.jpg",
      description:
          "Indulge in the succulent flavors of a beefy delight with gooey melted cheddar, fresh lettuce, ripe tomato, and a touch of tangy onion pickle.",
      name: "Steak Burger",
      price: 1.49,
    ),

    Food(
      availableAddons: [
        Addon(name: "Cheese", price: 0.33),
        Addon(name: "Tomato", price: 0.33),
        Addon(name: "Cucumber", price: 0.33),
        Addon(name: "Bacon", price: 0.49),
        Addon(name: "Avocado", price: 0.49),
      ],
      category: FoodCategory.burgers,
      image: "assets/images/burger/steakBurger.jpg",
      description:
          "Savor the smoky goodness of a Bacon Burger featuring a juicy beef patty topped with crispy bacon strips, melted cheese, fresh lettuce, ripe tomatoes, and a dollop of tangy barbecue sauce.",
      name: "Bacon Burger",
      price: 1.99,
    ),

    Food(
      availableAddons: [
        Addon(name: "Cheese", price: 0.33),
        Addon(name: "Tomato", price: 0.33),
        Addon(name: "Cucumber", price: 0.33),
        Addon(name: "Bacon", price: 0.49),
        Addon(name: "Avocado", price: 0.49),
      ],
      category: FoodCategory.burgers,
      image: "assets/images/burger/doubleCheeseBurger.jpg",
      description:
          "Treat yourself to the ultimate indulgence with our Double Cheeseburger, featuring two juicy beef patties layered with melted cheese, fresh lettuce, ripe tomatoes, and a savory special sauce, all nestled between soft, toasted buns.",
      name: "Double Cheeseburger",
      price: 2.99,
    ),
    // salads
    Food(
      availableAddons: [
        Addon(name: "Cheese", price: 0.33),
        Addon(name: "Tomato", price: 0.33),
        Addon(name: "Cucumber", price: 0.33),
        Addon(name: "Cabbage", price: 0.33),
        Addon(name: "Avocado", price: 0.49),
      ],
      category: FoodCategory.salads,
      image: "assets/images/salads/tomatoCucumberCabbageSalad.jpg",
      description:
          "Enjoy a refreshing Tomato, Cucumber, and Cabbage Salad, a vibrant medley of juicy tomatoes, crisp cucumbers, and crunchy cabbage tossed in a zesty vinaigrette dressing, perfect for a light and healthy meal or a refreshing side dish.",
      name: "Tomato, Cucumber, and Cabbage Salad",
      price: 1.39,
    ),

    // sides
    Food(
      availableAddons: [
        Addon(name: "Salt", price: 0.00),
      ],
      category: FoodCategory.sides,
      image: "assets/images/sides/bread.jpg",
      description:
          "Indulge in the simple pleasure of freshly baked bread, a staple that embodies warmth, comfort, and the aroma of home. Whether it's a crusty baguette, a fluffy brioche, or a hearty whole wheat loaf, each bite is a celebration of tradition and craftsmanship, inviting you to savor the essence of good food and good company.",
      name: "Freshly bread",
      price: 0.39,
    ),

    Food(
      availableAddons: [
        Addon(name: "Bacon", price: 0.49),
        Addon(name: "Pasta", price: 0.49),
        Addon(name: "Sauce", price: 0.33),
      ],
      category: FoodCategory.sides,
      image: "assets/images/sides/carbonara.jpg",
      description:
          "Delight in the creamy decadence of Carbonara, a classic Italian pasta dish that combines al dente spaghetti with a luscious sauce made from eggs, cheese, pancetta, and black pepper. Each forkful offers a rich and satisfying experience, blending savory flavors in a symphony of culinary perfection.",
      name: "Carbonara",
      price: 3.99,
    ),

    Food(
      availableAddons: [
        Addon(name: "Bacon", price: 0.49),
        Addon(name: "Pasta", price: 0.49),
        Addon(name: "Sauce", price: 0.33)
      ],
      category: FoodCategory.sides,
      image: "assets/images/sides/fingerPastaSauce.jpg",
      description:
          "Delight in the creamy decadence of Carbonara, a classic Italian pasta dish that combines al dente spaghetti with a luscious sauce made from eggs, cheese, pancetta, and black pepper. Each forkful offers a rich and satisfying experience, blending savory flavors in a symphony of culinary perfection.",
      name: "Finger Pasta with Sauce",
      price: 3.99,
    ),

    Food(
      availableAddons: [
        Addon(name: "Shrimps", price: 0.99),
        Addon(name: "Sauce", price: 0.33)
      ],
      category: FoodCategory.sides,
      image: "assets/images/sides/shrimpLemon.jpg",
      description:
          "Savor the exquisite flavors of succulent shrimp with a zesty twist of lemon. Each bite is a tantalizing blend of fresh seafood and citrusy brightness, creating a harmonious balance of flavors that dance on your palate. This dish is a refreshing and light option that celebrates the natural sweetness of shrimp complemented by the vibrant acidity of lemon, making it a perfect choice for a bright and satisfying meal.",
      name: "Shrimp with Lemon",
      price: 4.99,
    ),
    // drinks
    Food(
      availableAddons: [
        Addon(name: "Tube", price: 0.00),
      ],
      category: FoodCategory.drinks,
      image: "assets/images/drinks/juiceAloeApple.jpg",
      description:
          "Indulge in the refreshing fusion of aloe vera and apple in our revitalizing juice blend. Crisp apple notes intertwine with the soothing essence of aloe vera, creating a harmonious concoction that is not only delicious but also brimming with health benefits. Each sip is a rejuvenating experience, offering a perfect balance of sweetness and natural goodness to invigorate your senses.",
      name: "Juice with Aloe Vera & Apple",
      price: 1.49,
    ),

    Food(
      availableAddons: [
        Addon(name: "Tube", price: 0.00),
      ],
      category: FoodCategory.drinks,
      image: "assets/images/drinks/juiceSummerMix.jpg",
      description:
          "Immerse yourself in the vibrant essence of summer with our JuiceSummerMix, a tantalizing blend of kiwi, peach, and grape. This refreshing concoction captures the sun-kissed flavors of ripe kiwi, juicy peach, and luscious grape, creating a symphony of fruity delights in every sip. Each glass is a burst of tropical paradise, offering a perfect balance of sweetness and tanginess that will transport you to a blissful summer day with each taste.",
      name: "Juice 'Summer Mix'",
      price: 1.49,
    ),
    Food(
      availableAddons: [
        Addon(name: "Tube", price: 0.00),
      ],
      category: FoodCategory.drinks,
      image: "assets/images/drinks/juiceTropicalMix.jpg",
      description:
          "Transport yourself to a tropical oasis with our JuiceTropicalMix, a luscious blend of kiwi, strawberry, pineapple, and mango. This exotic medley combines the tangy essence of kiwi, the sweetness of ripe strawberries, the tropical allure of pineapple, and the creamy richness of mango, creating a harmonious symphony of flavors that will whisk you away to a paradise of sun-kissed fruits. Each sip is a journey to a tropical getaway, offering a burst of freshness and sweetness that will awaken your taste buds and invigorate your senses.",
      name: "Juice 'Tropical Mix'",
      price: 1.49,
    ),
    Food(
      availableAddons: [
        Addon(name: "Tube", price: 0.00),
      ],
      category: FoodCategory.drinks,
      image: "assets/images/drinks/orangeGrapefruitJuice.jpg",
      description:
          "Immerse yourself in the vibrant blend of Citrus Strawberry Freshness, a zesty concoction featuring the sunny notes of orange, the tangy kick of grapefruit, and the sweet essence of strawberry. Each sip is a refreshing burst of citrusy goodness paired with the delicate sweetness of ripe strawberries, creating a harmonious symphony of flavors that will invigorate your senses and brighten your day.",
      name: "Juice 'Citrus Strawberry Freshness'",
      price: 1.49,
    ),
    // dessetrs
    Food(
      availableAddons: [
        Addon(name: "Spoon", price: 0.00),
      ],
      category: FoodCategory.desserts,
      image: "assets/images/drinks/cakeBouton.jpg",
      description:
          "Experience the epitome of decadence with Cake 'Bouton', a heavenly confection that promises a symphony of flavors and textures. Delight in layers of moist sponge cake, velvety cream, and a delectable frosting that harmonize to create a luxurious treat. Indulge in a slice of Cake Bouton to elevate your dessert experience to a realm of pure delight and sophistication.",
      name: "Cake 'Bouton'",
      price: 1.79,
    ),
    Food(
      availableAddons: [
        Addon(name: "Fork", price: 0.00),
        Addon(name: "Knife", price: 0.00),
      ],
      category: FoodCategory.desserts,
      image: "assets/images/desserts/pancakesBlackberriesNutsSauce.jpg",
      description:
          "Delight in the perfect combination of sweet and nutty flavors with our Blackberries Nuts Sauce pancakes. These fluffy pancakes are generously topped with plump blackberries, crunchy nuts, and a drizzle of decadent sauce. Each bite offers a symphony of textures and tastes, creating a delightful breakfast treat that will satisfy your cravings and bring a touch of indulgence to your morning routine. Enjoy a stack of these pancakes and elevate your breakfast experience to a new level of deliciousness.",
      name: "Blueberry pancakes with pecans in gravy",
      price: 1.79,
    ),
    Food(
      availableAddons: [
        Addon(name: "Fork", price: 0.00),
        Addon(name: "Knife", price: 0.00),
      ],
      category: FoodCategory.desserts,
      image: "assets/images/desserts/pancakesScrambledPeanutsSauce.jpg",
      description:
          "Experience a unique twist on traditional pancakes with our Scrambled Peanuts Sauce pancakes. These fluffy delights are topped with a generous serving of scrambled peanuts and a drizzle of savory sauce, creating a delightful fusion of sweet and nutty flavors. Each bite offers a satisfying crunch and a burst of rich, nutty taste that will tantalize your taste buds. Indulge in a stack of these pancakes for a breakfast experience that is both comforting and exciting, perfect for those looking to add a touch of creativity to their morning meal.",
      name: "Pancakes with cream, peanuts in gravy.",
      price: 1.79,
    ),
    Food(
      availableAddons: [
        Addon(name: "Fork", price: 0.00),
        Addon(name: "Knife", price: 0.00),
      ],
      category: FoodCategory.desserts,
      image: "assets/images/desserts/pancakesScrambledPeanutsSauce.jpg",
      description:
          "Indulge in the elegant delight of a Strawberry Roulade, a decadent dessert that combines light and airy sponge cake with a luscious strawberry filling. This exquisite roulade is rolled to perfection, showcasing swirls of vibrant red strawberries that add a burst of fruity sweetness to every bite. With each slice, you'll experience a harmonious blend of textures and flavors that will captivate your senses and leave you craving more. Treat yourself to a slice of our Strawberry Roulade for a taste of pure dessert bliss.",
      name: "Pancakes with cream, peanuts in gravy.",
      price: 1.79,
    ),
  ];
}
