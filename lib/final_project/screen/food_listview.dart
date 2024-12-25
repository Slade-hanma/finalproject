// lib/screen/food_viewlist.dart
import 'package:flutter/material.dart';
import '../screen/foodview_screen.dart'; // Import the food detail screen
import '../models/foodclass.dart'; // Import the Food class
import '../models/foodcook.dart'; // Import the Fooddiscribe class



class FoodHomePage extends StatefulWidget {
  @override
  State<FoodHomePage> createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  final List<Food> foods = [
    // Japanese Dishes
    Food(name: 'Shoyu Ramen', imageUrl: '../assets/food/japanese/shoyu_ramen.jpg', country: 'Japan'),
    Food(name: 'Japanese Curry', imageUrl: '../assets/food/japanese/japanese_curry.jpg', country: 'Japan'),
    Food(name: 'Miso Soup', imageUrl: '../assets/food/japanese/miso_soup.jpg', country: 'Japan'),

    // International Dishes
    Food(name: 'Pizza Pepperoni', imageUrl: '../assets/food/international/pepperoni_pizza.jpg', country: 'International'),
    Food(name: 'Creamy Garlic Pasta', imageUrl: '../assets/food/international/creamy_garlic_pasta.jpg', country: 'International'),
    Food(name: 'Cheese Burger', imageUrl: '../assets/food/international/cheese_burger.jpg', country: 'International'),
    Food(name: 'Lasagna', imageUrl: '../assets/food/international/lasagna.jpg', country: 'International'),
    Food(name: 'Beef Birria Tacos', imageUrl: '../assets/food/international/beef_birria_tacos.jpg', country: 'International'),
    Food(name: 'Roast Turkey', imageUrl: '../assets/food/international/roast_turkey.jpg', country: 'International'),
    Food(name: 'Fried Chicken', imageUrl: '../assets/food/international/fried_chicken.jpg', country: 'International'),
    Food(name: 'Steak', imageUrl: '../assets/food/international/steak.jpg', country: 'International'),

    // Chinese Dishes
    Food(name: 'Dimsum', imageUrl: '../assets/food/chinese/dimsum.jpg', country: 'China'),
    Food(name: 'Peking Duck', imageUrl: '../assets/food/chinese/peking_duck.jpg', country: 'China'),
    Food(name: 'Kung Pao Chicken', imageUrl: '../assets/food/chinese/kung_pao_chicken.jpg', country: 'China'),
    Food(name: 'Sweet and Sour Pork', imageUrl: '../assets/food/chinese/sweet_sour_pork.jpg', country: 'China'),
    Food(name: 'Mapo Tofu', imageUrl: '../assets/food/chinese/mapo_tofu.jpg', country: 'China'),
    Food(name: 'Shrimp Chow Mein', imageUrl: '../assets/food/chinese/shrimp_chow_mein.jpg', country: 'China'),
    Food(name: 'Chasiu', imageUrl: '../assets/food/chinese/chasiu.jpg', country: 'China'),
    Food(name: 'Shrimp Fried Rice', imageUrl: '../assets/food/chinese/shrimp_fried_rice.jpg', country: 'China'),

    // Cambodian Dishes
    Food(name: 'Amok Trey', imageUrl: '../assets/food/cambodia/amok_trey.jpg', country: 'Cambodia'),
    Food(name: 'Lok Lak', imageUrl: '../assets/food/cambodia/loklak.jpg', country: 'Cambodia'),
    Food(name: 'Num Banh Chuk', imageUrl: '../assets/food/cambodia/numbanh_chuk.jpg', country: 'Cambodia'),
    Food(name: 'Bai Sach Chruk', imageUrl: '../assets/food/cambodia/bai_sach_chruk.jpg', country: 'Cambodia'),
    Food(name: 'Kuy Teav', imageUrl: '../assets/food/cambodia/kuyteav.jpg', country: 'Cambodia'),
  ];

  // Food descriptions for each food item
  final Map<String, Fooddiscribe> foodDetails = {
    'Shoyu Ramen': Fooddiscribe(
      foodIngredients: [
        '1 (2 1/2 pound) whole chicken, cut into pieces',
        '1 cup dried scallops',
        '1 cup dried anchovies',
        '¼ cup dried shrimp',
        '¼ cup bonito flakes',
        '1 (1 inch) piece ginger, thinly sliced, divided',
        '1 (4 inch) piece dashi kombu (dried kelp)',
        '3 quarts water',
        '1 cup soy sauce',
        '½ cup mirin',
        '½ cup sake',
        '8 green onions',
        '½ cup bonito flakes',
        '¼ cup white sugar',
        '8 cloves garlic, crushed',
        '6 (3 ounce) packages cooked ramen noodles, or to taste',
      ],
      foodSteps: [
        'Place chicken, scallops, anchovies, shrimp, bonito flakes, half the ginger, and kombu in an electric pressure cooker. Add water; close and lock the lid. Select the Soup setting; set timer for 90 minutes.',
        'Release pressure using the natural-release method according to manufacturer\'s instructions, 10 to 40 minutes. Strain broth through a colander or fine-mesh sieve. Skim the fatty oil off the top of the broth.',
        'Combine soy sauce, mirin, sake, green onions, bonito flakes, sugar, garlic, and kombu in a medium saucepan over high heat. Bring to a boil. Reduce heat to low and simmer until flavors blend, about 10 minutes. Strain tare sauce through a fine-mesh sieve into a bowl.',
        'Pour 2 tablespoons of tare sauce into a large bowl. Ladle in about 2 cups of broth. Add 1/6 of the ramen noodles. Repeat with remaining tare, broth, and ramen.',
      ],
    ),
    'Japanese Curry': Fooddiscribe(
      foodIngredients: [
        '1 tablespoon vegetable oil, or more as needed',
        '1 ¾ pounds beef chuck, cut into 2-inch cubes',
        '3 onions, quartered',
        '1 tablespoon ketchup',
        '1 ½ teaspoons Worcestershire sauce',
        '1 pinch cayenne pepper, or to taste (Optional)',
        'water to cover',
        '4 carrots, cut into 2-inch pieces',
        '1 cube chicken bouillon (Optional)',
        '3 medium potatoes, cut into 3-inch chunks',
        '1 ½ (3.5 ounce) containers Japanese curry roux, or more to taste',
      ],
      foodSteps: [
        'Heat oil in a 6-quart pot over medium-high heat. Add beef and sauté until brown, 5 to 7 minutes. Add onions and cook until starting to soften, about 3 minutes. Add ketchup and Worcestershire sauce. Stir to coat. Add cayenne pepper. Pour in water to cover mixture by 1 or 2 inches. Add carrots and bouillon.',
        'Simmer, skimming fat off the surface of the broth as needed, for 30 minutes. Add potatoes. Stir in 1 package of curry roux and let dissolve; add remaining curry as needed to achieve desired thickness. Continue simmering until beef and vegetables are tender, about 30 minutes more.',
      ],
    ),
    'Miso Soup': Fooddiscribe(
      foodIngredients: [
        '4 cups dashi (Japanese soup stock)',
        '1/4 cup miso paste',
        '1/2 cup tofu, cubed',
        '1/4 cup green onions, chopped',
        '1/4 cup wakame seaweed, rehydrated',
      ],
      foodSteps: [
        'In a pot, heat dashi over medium heat until hot but not boiling.',
        'In a small bowl, mix miso paste with a little dashi to make a smooth paste.',
        'Add the miso mixture back to the pot and stir well.',
        'Add tofu and wakame, and simmer for 2-3 minutes.',
        'Serve hot, garnished with green onions.',
      ],
    ),
    'Pizza Pepperoni': Fooddiscribe(
      foodIngredients: [
        '16 ounces pizza dough, store-bought or homemade',
        '1/2 cup pizza sauce',
        '18 to 20 slices pepperoni',
        '12 ounces mozzarella cheese, grated',
        '1/2 teaspoon ground black pepper',
        '1 teaspoon fresh oregano, optional',
        'Flour for rolling and shaping dough',
        'For the Quick Pizza Sauce:',
        '1/2 cup tomato sauce (no salt)',
        '1/2 teaspoon kosher salt',
        '1/2 teaspoon ground black pepper',
        '1/2 teaspoon granulated garlic',
        '1/2 teaspoon granulated onion',
        '1/4 teaspoon red pepper flakes',
        '1 teaspoon olive oil',
        'For the Honey Butter (Optional):',
        '1/4 cup softened butter',
        '2 tablespoons honey',
      ],
      foodSteps: [
        'Step 1: Preheat the oven to 500°F. If using a pizza stone, preheat it in the oven for at least 20 minutes.',
        'Step 2: Make the sauce: Stir together the ingredients for the sauce.',
        'Step 3: Roll out the dough on a lightly floured surface.',
        'Step 4: Transfer the dough to a lightly dusted pizza peel or fit it into a large cast-iron skillet.',
        'Step 5: Add sauce in a light layer, sprinkle chopped pepperoni, cheese, and the rest of the pepperoni on top.',
        'Step 6: Cook the pizza: Slide pizza into the preheated pizza stone and cook for 6-8 minutes.',
        'Step 7: Slice and serve while warm.',
        'Step 8: Make the honey butter: Stir together softened butter and honey to serve alongside.',
      ],
    ),
    'Creamy Garlic Pasta': Fooddiscribe(
      foodIngredients: [
        '2 teaspoons olive oil',
        '4 garlic cloves, minced',
        '2 tablespoons butter',
        '3 cups chicken broth, or more as needed',
        '½ teaspoon ground black pepper',
        '¼ teaspoon salt',
        '½ pound spaghetti',
        '1 cup grated Parmesan cheese',
        '¾ cup heavy cream',
        '1 ½ tablespoons dried parsley',
      ],
      foodSteps: [
        'Step 1: Gather all ingredients.',
        'Step 2: Heat olive oil in a medium pan over medium heat. Add garlic and stir until fragrant, 1 to 2 minutes. Add butter and stir until melted.',
        'Step 3: Pour in chicken broth; add pepper and salt. Bring to a boil. Add spaghetti and cook until tender, about 12 minutes.',
        'Step 4: Add Parmesan cheese, cream, and parsley, mixing until thoroughly combined. Serve immediately.',
      ],
    ),
    'Cheese Burger': Fooddiscribe(
      foodIngredients: [
        '2 pounds freshly ground chuck',
        '1 tablespoon onion powder',
        '1 teaspoon salt',
        '1 teaspoon freshly ground black pepper',
        '12 slices deli-counter American cheese',
        '6 large burger buns',
        'ketchup',
        'mayonnaise',
        'thousand island dressing',
        'sliced red onion',
        'sliced tomatoes',
        'sliced pickles',
        'fresh lettuce leaves',
      ],
      foodSteps: [
        'Step 1: In a large bowl, mix ground beef, onion powder, salt, and pepper until just combined.',
        'Step 2: Divide into six portions and form patties.',
        'Step 3: Preheat your grill or skillet to high heat and add burger patties.',
        'Step 4: Cook until a crust forms on the bottom, about 2 minutes. Flip and add cheese slices.',
        'Step 5: Cook on the other side for another 2-3 minutes for medium to medium rare.',
        'Step 6: Remove burgers and let rest before transferring to buns. Garnish as desired and serve immediately.',
      ],
    ),
    'Lasagna': Fooddiscribe(
      foodIngredients: [
        '1 pound sweet Italian sausage',
        '¾ pound lean ground beef',
        '½ cup minced onion',
        '2 cloves garlic, crushed',
        '1 (28 ounce) can crushed tomatoes',
        '2 (6.5 ounce) cans canned tomato sauce',
        '2 (6 ounce) cans tomato paste',
        '½ cup water',
        '2 tablespoons white sugar',
        '4 tablespoons chopped fresh parsley, divided',
        '1 ½ teaspoons dried basil leaves',
        '1 ½ teaspoons salt, divided, or to taste',
        '1 teaspoon Italian seasoning',
        '½ teaspoon fennel seeds',
        '¼ teaspoon ground black pepper',
        '12 lasagna noodles',
        '16 ounces ricotta cheese',
        '1 egg',
        '¾ pound mozzarella cheese, sliced',
        '¾ cup grated Parmesan cheese',
      ],
      foodSteps: [
        'Step 1: Gather all your ingredients.',
        'Step 2: Cook sausage, ground beef, onion, and garlic in a Dutch oven over medium heat until well browned.',
        'Step 3: Stir in crushed tomatoes, tomato sauce, and tomato paste. Simmer for about 1 ½ hours.',
        'Step 4: Cook lasagna noodles in boiling water for 8-10 minutes. Drain and rinse with cold water.',
        'Step 5: In a mixing bowl, combine ricotta cheese with egg, parsley, and salt.',
        'Step 6: Preheat the oven to 375 degrees F (190 degrees C).',
        'Step 7: To assemble, spread 1 ½ cups of meat sauce in the bottom of a baking dish. Layer noodles, ricotta mixture, mozzarella, and meat sauce.',
        'Step 8: Repeat layers and top with remaining mozzarella and Parmesan cheese. Cover with foil and bake for 25 minutes.',
        'Step 9: Remove foil and bake for an additional 25 minutes. Rest for 15 minutes before serving.',
      ],
    ),
    'Beef Birria Tacos': Fooddiscribe(
      foodIngredients: [
        '6 dried guajillo chile peppers, seeded',
        '4 dried chile de arbol peppers, stemmed and seeded',
        '2 dried ancho chiles, stemmed and seeded',
        '1 tablespoon olive oil, or as needed',
        '4 medium Roma tomatoes',
        '2 tablespoons white vinegar',
        '2 cloves garlic',
        '2 teaspoons ground black pepper',
        '4 whole cloves',
        '1 pinch ground cinnamon',
        '1 pinch ground cumin',
        '1 pinch ground thyme',
        '1 pinch dried marjoram',
        '1 pinch dried oregano',
        '1 pinch salt',
        '4 pounds beef chuck roast',
        'salt and freshly ground black pepper to taste',
        '18 corn tortillas',
        '1 large white onion, finely chopped',
        '1 bunch fresh cilantro, chopped',
        '1 cup shredded queso asadero (white Mexican cheese) (Optional)',
      ],
      foodSteps: [
        'Step 1: Gather all ingredients. Preheat the oven to 325 degrees F (165 degrees C).',
        'Step 2: Start the sauce: Boil the dried chiles for 5 minutes.',
        'Step 3: Remove from heat and allow peppers to soak until cool. Drain, reserving 1/4 cup of the cooking water.',
        'Step 4: Meanwhile, sear the meat: Rinse beef, season with salt and pepper, and brown in a Dutch oven.',
        'Step 5: Grill tomatoes until charred, then blend with cooled chiles, vinegar, garlic, and spices.',
        'Step 6: Pour the blended sauce over browned meat, cover, and bake for 3-4 hours until tender.',
        'Step 7: Shred meat and mix with sauce. Assemble tacos with meat, onions, cilantro, and cheese.',
        'Step 8: Serve with extra sauce on the side for dipping.',
      ],
    ),
    'Roast Turkey': Fooddiscribe(
      foodIngredients: [
        '1 (18 pound) whole turkey',
        '8 cups prepared stuffing',
        '½ cup unsalted butter, softened',
        'salt and freshly ground black pepper to taste',
        '1 ½ quarts turkey stock, divided',
      ],
      foodSteps: [
        'Step 1: Gather all ingredients. Preheat the oven to 325 degrees F (165 degrees C).',
        'Step 2: Remove turkey neck and giblets. Rinse turkey and pat dry.',
        'Step 3: Loosely fill turkey cavity with stuffing. Rub skin with butter, then season with salt and pepper.',
        'Step 4: Pour 2 cups of turkey stock into the roasting pan.',
        'Step 5: Tent turkey with aluminum foil, and roast for 2 ½ hours, basting every 30 minutes.',
        'Step 6: Remove foil and continue roasting until a meat thermometer reads 165 degrees F (75 degrees C).',
        'Step 7: Transfer turkey to a platter and let stand for 20-30 minutes before carving.',
        'Step 8: Serve and enjoy!',
      ],
    ),
    'Fried Chicken': Fooddiscribe(
      foodIngredients: [
        '1 (4 pound) chicken, cut into pieces',
        '1 cup buttermilk',
        '2 cups all-purpose flour for coating',
        '1 teaspoon paprika',
        'salt and pepper to taste',
        '2 quarts vegetable oil for frying',
      ],
      foodSteps: [
        'Step 1: Skin the chicken pieces if preferred.',
        'Step 2: Season flour with paprika, salt, and pepper in a bag.',
        'Step 3: Dip chicken in buttermilk, then coat in seasoned flour.',
        'Step 4: Let coated chicken sit until the flour is paste-like.',
        'Step 5: Heat oil in a skillet and fry chicken until golden and cooked through.',
        'Step 6: Drain on paper towels and keep warm until serving.',
      ],
    ),
        'Steak': Fooddiscribe(
      foodIngredients: [
        '2 ribeye steaks, about 1 inch thick',
        '2 tablespoons olive oil',
        'Salt and freshly ground black pepper to taste',
        '2 cloves garlic, crushed',
        '2 sprigs fresh rosemary or thyme',
        'Butter for basting',
      ],
      foodSteps: [
        'Step 1: Remove steaks from the refrigerator and let them sit at room temperature for 30 minutes.',
        'Step 2: Preheat a grill or skillet over high heat until very hot.',
        'Step 3: Pat steaks dry with paper towels and rub with olive oil, salt, and pepper.',
        'Step 4: Place steaks on the grill/skillet and cook for 4-5 minutes on each side for medium-rare.',
        'Step 5: In the last minute of cooking, add garlic and herbs to the pan, and baste the steaks with butter.',
        'Step 6: Remove steaks from heat and let rest for 5-10 minutes before slicing.',
        'Step 7: Serve with your choice of sides.',
      ],
    ),
    'Dimsum': Fooddiscribe(
      foodIngredients: [
        '1 pound ground pork',
        '1 large onion, chopped',
        '½ bunch cilantro, chopped',
        '½ teaspoon crushed red pepper flakes',
        '2 teaspoons red curry paste',
        '½ teaspoon garam masala',
        '½ teaspoon chili powder',
        '¼ teaspoon onion powder',
        '¼ teaspoon garlic powder',
        '1 cup all-purpose flour',
        '¼ cup water as needed',
        '3 tablespoons peanut butter',
        '½ teaspoon cayenne pepper',
        '1 teaspoon white sugar',
        '1 teaspoon vegetable oil',
      ],
      foodSteps: [
        'Combine pork, onion, cilantro, red pepper flakes, red curry paste, garam masala, chili powder, onion powder, and garlic powder in a bowl; mix well and set aside.',
        'Place flour into a separate bowl. Slowly stir in water as needed until a soft dough is achieved; some water may be left over. Roll out walnut-sized balls of dough into thin circles for wrappers.',
        'Fill each wrapper with about 1 tablespoon pork mixture. Moisten the edges of wrapper, then fold in half, sealing to create a half-moon shape. Repeat with remaining wrappers and filling.',
        'Place dumplings in a steamer over 1-inch boiling water and cover. Steam until dough becomes glossy, about 10 minutes.',
        'Combine peanut butter, cayenne pepper, sugar, and vegetable oil in a microwave-safe glass or ceramic bowl. Cook in the microwave on high for 30 seconds; stir. Serve with dumplings.',
      ],
    ),
    'Peking Duck': Fooddiscribe(
      foodIngredients: [
        '1 (4 pound) whole duck, dressed',
        '½ teaspoon ground cinnamon',
        '½ teaspoon ground ginger',
        '¼ teaspoon ground nutmeg',
        '¼ teaspoon ground white pepper',
        '⅛ teaspoon ground cloves',
        '3 tablespoons soy sauce, divided',
        '1 tablespoon honey',
        '5 green onions, divided',
        '½ cup plum jam',
        '¼ cup finely chopped chutney',
        '1 ½ teaspoons sugar',
        '1 ½ teaspoons distilled white vinegar',
        '1 orange, sliced in rounds',
        '1 tablespoon chopped fresh parsley, for garnish',
      ],
      foodSteps: [
        'Gather all ingredients.',
        'Rinse duck inside and out; pat dry. Cut off tail and discard.',
        'Mix cinnamon, ginger, nutmeg, white pepper, and cloves together in a small bowl. Sprinkle 1 teaspoon of spice mix into cavity of duck.',
        'Stir 1 tablespoon soy sauce into remaining spice mix and rub evenly over entire outside of duck.',
        'Cut 1 green onion in half and tuck it inside cavity.',
        'Cover and refrigerate duck for at least 2 hours or up to overnight.',
        'Place duck breast-side up on a rack set in a wok or pot. Steam for 1 hour, adding more water as it evaporates.',
        'Lift duck with two large spoons to drain juices and green onion.',
        'Preheat the oven to 375 degrees F (190 degrees C). Place duck breast-side up in a roasting pan and prick skin all over with a fork.',
        'Roast duck in the preheated oven for 30 minutes.',
        'Mix together remaining 2 tablespoons soy sauce and honey in a small bowl. Brush honey mixture onto duck.',
        'Increase the oven temperature to 500 degrees F (260 degrees C). Roast until skin is richly browned, about 5 minutes. Do not allow skin to char.',
        'Mix plum jam, chutney, sugar, and vinegar in a small serving bowl. Chop remaining green onions and place them into a separate bowl.',
        'Place whole duck onto a serving platter and garnish with orange slices and fresh parsley. Serve with plum sauce and chopped green onions.',
      ],
    ),
    'Kung Pao Chicken': Fooddiscribe(
      foodIngredients: [
        '2 tablespoons cornstarch, dissolved in 2 tablespoons water',
        '2 tablespoons white wine, divided',
        '2 tablespoons soy sauce, divided',
        '2 tablespoons sesame oil, divided',
        '1 pound skinless, boneless chicken breast halves - cut into chunks',
        '1 ounce hot chili paste',
        '2 teaspoons brown sugar',
        '1 teaspoon distilled white vinegar',
        '1 (8 ounce) can water chestnuts',
        '4 ounces chopped peanuts',
        '4 green onions, chopped',
        '1 tablespoon chopped garlic',
      ],
      foodSteps: [
        'Gather all ingredients.',
        'Combine water and cornstarch in a cup; set aside.',
        'Combine 1 tablespoon wine, 1 tablespoon soy sauce, 1 tablespoon sesame oil, and 1 tablespoon cornstarch/water mixture in a large glass bowl. Add chicken pieces and toss to coat. Cover the dish and refrigerate for about 30 minutes.',
        'Combine remaining 1 tablespoon wine, 1 tablespoon soy sauce, 1 tablespoon sesame oil, and remaining cornstarch/water mixture in a medium bowl. Whisk in chili paste, brown sugar, and vinegar. Add water chestnuts, peanuts, green onions, and garlic and toss to coat.',
        'Transfer water chestnut mixture to a medium skillet. Heat slowly over medium heat until aromatic.',
        'Meanwhile, transfer chicken from marinade into a large skillet; cook over medium-high heat, stirring, until chicken is cooked through and juices run clear.',
        'Combine water chestnut mixture and sautéed chicken together in one skillet. Adjust heat and simmer together until sauce thickens.',
      ],
    ),
    'Sweet and Sour Pork': Fooddiscribe(
      foodIngredients: [
        '1 (1 1/4 pound) pork tenderloin, trimmed of silver skin',
        'salt and ground black pepper',
        '⅓ cup ketchup',
        '⅓ cup seasoned rice vinegar',
        '1 (8 ounce) can pineapple chunks, drained with juice reserved',
        '2 tablespoons brown sugar',
        '4 cloves garlic, minced',
        '2 teaspoons hot chili sauce (such as Sriracha®)',
        '1 teaspoon soy sauce',
        '1 pinch red pepper flakes',
        '1 tablespoon vegetable oil',
        '1 teaspoon butter',
        '¼ cup chopped green onion (white part only)',
        '2 tablespoons chopped green onion tops',
      ],
      foodSteps: [
        'Cut tenderloin into 4 pieces. Arrange in a single layer between two sheets of plastic wrap and pound with a meat mallet until each is about 1-inch thick. Generously season with salt and black pepper.',
        'Whisk ketchup, rice vinegar, reserved pineapple juice, brown sugar, garlic, hot chili sauce, soy sauce, and red pepper flakes in a bowl. Set aside.',
        'Heat vegetable oil in a skillet over high heat. Place pork in pan; reduce heat to medium. Cook until browned on both sides and cooked through, 5 to 6 minutes per side. Transfer to a plate.',
        'Return skillet to medium heat. Stir butter into hot pan. When butter melts and starts to brown, stir in pineapple chunks. Cook, stirring, until pineapple is golden brown, 3 to 4 minutes.',
        'Stir in ketchup mixture and 1/4 cup green onion (white parts). Reduce heat to low and simmer until garlic and onion have softened, 5 minutes.',
        'Return pork to skillet; cook, stirring, until pork is heated through. Garnish with 2 tablespoons green onion tops.',
      ],
    ),
    'Mapo Tofu': Fooddiscribe(
      foodIngredients: [
        '1 tablespoon cold water',
        '1 teaspoon cornstarch',
        '½ pound ground pork',
        '1 tablespoon vegetable oil',
        '1 tablespoon minced garlic',
        '1 tablespoon minced fresh ginger root',
        '1 (16 ounce) package firm tofu, cut into 1 inch pieces',
        '5 tablespoons soy sauce',
        '2 tablespoons hot bean sauce',
        '1 teaspoon white sugar',
        '3 green onions, chopped',
        '1 teaspoon sesame oil',
      ],
      foodSteps: [
        'Mix water and cornstarch in a small bowl; set aside.',
        'Brown ground pork in a small skillet over medium-high heat, about 5 minutes. Drain fat.',
        'Heat oil over medium-high heat in a large skillet or wok. Cook garlic and ginger in oil until fragrant, about 1 minute. Stir in tofu and cook for 2 minutes. Season with soy sauce, hot bean sauce, and sugar; stir to combine.',
        'Stir in cooked pork and green onion. Sprinkle with cornstarch and water mixture; cook and stir until thickened, about 2 minutes. Stir sesame oil into the thickened mapo tofu.',
      ],
    ),
    'Shrimp Chow Mein': Fooddiscribe(
      foodIngredients: [
        '8 ounces chow mein noodles',
        '¼ cup chicken stock',
        '2 tablespoons dry sherry',
        '2 tablespoons oyster sauce',
        '1 ½ tablespoons soy sauce',
        '2 teaspoons toasted sesame oil',
        '1 teaspoon light brown sugar',
        '¼ teaspoon ground black pepper',
        '2 tablespoons canola oil',
        '½ cup matchstick carrots',
        '½ cup thinly sliced onion',
        '½ stalk celery, diagonally sliced',
        '1 ½ tablespoons finely chopped fresh ginger',
        '1 teaspoon finely chopped garlic',
        '¾ pound uncooked medium shrimp, peeled and deveined',
        '1 cup bean sprouts',
        '4 stalks green onions, thinly sliced on the diagonal',
        '2 cups fresh baby spinach',
      ],
      foodSteps: [
        'Fill a large pot with lightly salted water and bring to a rapid boil. Cook noodles at a boil until tender yet firm to the bite, 3 to 5 minutes. Drain, rinse, and set aside.',
        'Meanwhile, whisk together chicken stock, sherry, oyster sauce, soy sauce, sesame oil, brown sugar, and pepper in a small bowl.',
        'Heat a large 12-inch cast iron skillet or wok over medium-high heat until hot. Add canola oil and swirl to coat the bottom of the pan; heat until it just begins to smoke. Add carrots, onion, celery, ginger, and garlic to hot oil and cook, stirring constantly, just until vegetables begin to soften, about 1 minute. Add shrimp and cook, stirring constantly, until almost done, about 2 minutes. Push vegetables and shrimp to one side of the pan and add chicken stock mixture; stir constantly until sauce is hot.',
        'Add noodles and stir well to mix with sauce and vegetables (using a metal spatula and chopping noodles slightly helps to mix this together.) Cook, stirring constantly, until the noodles have absorbed the sauce, about 2 minutes. Stir in bean sprouts and green onions and cook, stirring constantly, until just cooked, 1 to 2 minutes. Remove from heat and stir in baby spinach until just wilted. Serve immediately.',
      ],
    ),
    'Chasiu': Fooddiscribe(
      foodIngredients: [
        '½ cup soy sauce',
        '⅓ cup honey',
        '⅓ cup ketchup',
        '⅓ cup brown sugar',
        '¼ cup Chinese rice wine',
        '2 tablespoons hoisin sauce',
        '2 tablespoons red bean curd (Optional)',
        '1 teaspoon Chinese five-spice powder (Optional)',
        '2 (1 pound) pork tenderloins',
      ],
      foodSteps: [
        'Gather all ingredients.',
        'Stir soy sauce, honey, ketchup, brown sugar, rice wine, hoisin sauce, red bean curd, and five-spice powder together in a saucepan over medium-low heat. Cook and stir until just combined and slightly warm, 2 to 3 minutes.',
        'Meanwhile, slice each pork tenderloin lengthwise into 1 1/2- to 2-inch-thick strips. Place pork strips in a large, resealable plastic bag.',
        'Pour marinade into the bag with the pork. Squeeze air from the bag, seal, and turn the bag a few times until pork is well coated. Marinate in the refrigerator, 2 hours to overnight.',
        'When ready to cook, preheat a charcoal grill for medium-high heat and lightly oil the grate.',
        'Remove pork from marinade and shake to remove excess liquid. Set aside the remaining marinade for basting.',
        'Rake the hot coals into two equal piles on opposite sides of the charcoal grate. Add a small container of water to the grate. Place pork strips in the center of the grate for indirect cooking.',
        'Cook pork over indirect heat, turning regularly and basting as desired, until an instant-read thermometer inserted into the center reads at least 145 degrees F (63 degrees C), 30 minutes or longer.',
        'Serve hot and enjoy!',
      ],
    ),
    'Shrimp Fried Rice': Fooddiscribe(
      foodIngredients: [
        '2 tablespoons sesame oil',
        '2 tablespoons olive oil',
        '1 pound uncooked medium shrimp, peeled and deveined',
        '1 cup frozen peas and carrots',
        '½ cup frozen corn',
        '2 cloves garlic, finely minced, or more to taste',
        '3 large eggs, lightly beaten',
        '4 cups cooked rice',
        '3 tablespoons thinly sliced green onions',
        '3 tablespoons low-sodium soy sauce, or more to taste',
        '½ teaspoon salt, or to taste',
        '½ teaspoon freshly ground black pepper, or to taste',
      ],
      foodSteps: [
        'Heat sesame oil and olive oil in a large nonstick skillet or wok over medium-high heat. Add shrimp and cook until they are bright pink on the outside and the meat is opaque, about 3 minutes, flipping halfway through.',
        'Remove shrimp from the skillet using a slotted spoon, allowing oils and cooking juices to remain in the skillet. Place shrimp on a plate and set aside.',
        'Add peas and carrots and corn to the skillet and cook, stirring intermittently, until vegetables begin to soften, about 2 minutes. Add garlic; cook and stir for 1 minute. Push vegetables to the side of the skillet, pour eggs into the other side, and cook to scramble, stirring as necessary, 3 to 4 minutes.',
        'Stir shrimp, rice, and green onions into the skillet. Drizzle evenly with soy sauce, season with salt and pepper, and stir to combine. Cook until shrimp is reheated through, about 2 minutes.',
      ],
    ),
    'Amok Trey': Fooddiscribe(
      foodIngredients: [
        '2 stems lemongrass (white part only)',
        '1 teaspoon kaffir/makrut lime leaves, finely chopped',
        '1 teaspoon galangal, finely chopped',
        '1 teaspoon fresh turmeric',
        '2 cloves garlic',
        '1 small shallot',
        '½ lb white fish (e.g., haddock)',
        '1 egg',
        '½ cup coconut cream or thick part of coconut milk',
        '2 teaspoons fish sauce',
        '1 teaspoon palm sugar or brown sugar',
        '½ teaspoon shrimp paste',
        '½ teaspoon chili paste',
        '2 banana leaves (or foil if not available)',
        '4 cocktail sticks/toothpicks',
        '1 kaffir/makrut lime leaf',
        '1 red chili or thin slices of red pepper',
      ],
      foodSteps: [
        'Peel the outer layer off the lemongrass and trim the end, then finely chop. Thinly slice and chop the lime leaves, removing the central rib. Peel and chop the galangal, turmeric, garlic, and shallot.',
        'Place all ingredients in a mortar and pound them together until you have a relatively smooth paste. You can use a blender/food processor, but crushing helps meld the flavors.',
        'Cut two 8-inch squares from the banana leaves, wash them in warm water, and dry well.',
        'Fold one side of the banana leaf square, then fold the two sides at right angles to form corners. Secure with cocktail sticks. Repeat with the other piece.',
        'Prepare a pot with boiling water. If the fish is not peeled, remove the skin and bones, then chop into small pieces.',
        'In a bowl, mix the fish with the egg, coconut cream, fish sauce, palm sugar, chili paste, and kroeung paste. Combine well.',
        'Divide the mixture between the banana leaf boats and decorate with finely sliced lime leaf and chili. Steam for 20-30 minutes until set.',
      ],
    ),
    'Lok Lak': Fooddiscribe(
      foodIngredients: [
        '2 tablespoons oyster sauce',
        '1 tablespoon tomato paste',
        '2 tablespoons fish sauce',
        '½ tablespoon dark brown sugar',
        '2 teaspoons cornstarch',
        '1 teaspoon black pepper',
        '¼ cup water or low sodium chicken stock',
        '2 pounds New York strip or ribeye steak (cut into ½-inch cubes)',
        '3 cloves garlic, minced',
        '2 scallions, thinly sliced (green and whites separated)',
        '1½ tablespoons vegetable oil',
        '1½ teaspoons salt',
        '1 teaspoon sugar',
        '1 clove garlic, minced',
        '2 teaspoons black pepper',
        '½ cup fresh lime juice',
        '½ head crispy romaine lettuce, leaves separated',
        '2 large tomatoes, sliced',
        'Hot cooked jasmine rice',
      ],
      foodSteps: [
        'Whisk together the oyster sauce, tomato paste, fish sauce, cornstarch, salt, and black pepper in a medium bowl.',
        'Add the cubed beef to a small bowl with 2 tablespoons of the marinade, garlic, and whites of the scallions. Mix and marinate for 10 minutes.',
        'Add water or chicken stock to the remaining marinade and set aside.',
        'Combine salt, sugar, black pepper, lime juice, and garlic in a small bowl; set aside.',
        'Heat a large skillet over medium-high heat. Add oil and then the steak, searing for 4-5 minutes. Add the rest of the marinade and cook until thickened.',
        'On a platter, arrange lettuce leaves, overlapping tomatoes, and add beef to the center. Top with scallion greens. Serve with lime-pepper sauce and rice.',
        'Refrigerate any leftovers in separate sealed containers for 3-4 days.',
      ],
    ),
    'Num Banh Chok': Fooddiscribe(
      foodIngredients: [
        '200 g lemongrass stalks',
        '1 tbsp galangal',
        '1 tsp turmeric',
        '1 tbsp finger-root',
        '2 kaffir lime leaves',
        '1 tsp kaffir lime zest',
        '5 garlic cloves',
        '2 shallots',
        '400 g fish fillets',
        '1 tsp prahok',
        '1 tbsp palm sugar',
        '2-3 tbsp fish sauce (to taste)',
        '1 tsp salt (to taste)',
        '600 ml coconut milk',
        '500 g fresh rice noodles',
        '200 g bean sprouts',
        '1 large cucumber',
        '2 water lily stems',
        '4 medium-sized wing beans',
        '1 small banana blossom',
      ],
      foodSteps: [
        'In a mortar, pound lemongrass until mashed. Gradually add galangal, turmeric, finger-root, kaffir lime leaves, and zest, pounding until incorporated.',
        'Add garlic and shallots, pounding until smooth but still fibrous. Transfer to a sealed container and refrigerate.',
        'Poach fish fillets in prahok or fish sauce, palm sugar, and enough water until cooked. Mash fish with kroeung.',
        'Combine fish-kroeung mixture with coconut milk, fish sauce, and season to taste. Simmer for 5-10 minutes.',
        'Prepare rice noodles according to package instructions. Cool and set aside.',
        'Distribute shredded banana blossom in bowls, top with noodles, ladle fish gravy, and arrange vegetables on top. Garnish with lime and herbs.',
        'Serve with spoons and chopsticks, advising guests to mix before tasting.',
      ],
    ),
    'Bai Sach Chruk': Fooddiscribe(
      foodIngredients: [
        '400 g pork shoulder',
        '2 garlic cloves',
        '1½ tbsp light soy sauce',
        '40 g palm sugar',
        '125 ml coconut milk',
        '1½ tbsp fish sauce',
        '1 lime',
      ],
      foodSteps: [
        'Combine marinade ingredients in a plastic container. Add pork, coat well, and marinate for at least 3 hours or overnight.',
        'Remove pork from the fridge 30 minutes before cooking to bring to room temperature.',
        'Heat the barbecue or grill until charcoal is white hot.',
        'Remove pork from marinade, brush off excess, and grill for about 3 minutes per side until cooked through and slightly charred.',
        'Serve immediately on steamed rice with pickled vegetables.',
      ],
    ),
    'Kuy Teav': Fooddiscribe(
      foodIngredients: [
        '2 l chicken stock',
        '300 g poached chicken breasts',
        '200 g dried rice vermicelli noodles',
        '1 large carrot',
        '100 g bean sprouts',
        '8 pieces of Asian greens or lettuce',
        '2 cups of fresh fragrant herbs (basil, mint)',
        '4 birds eye chillies',
        '2 limes',
        '2 pieces spring onions',
      ],
      foodSteps: [
        'Bring chicken stock to a boil, then reduce to a simmer until ready to serve.',
        'Poach chicken in stock until just cooked, then shred into bite-sized pieces.',
        'Add carrot slices to the stock and skim off any impurities.',
        'Blanch bean sprouts and Asian greens, set aside.',
        'Cook rice vermicelli noodles according to package instructions, rinse, and set aside.',
        'Prepare garnishes: chop chillies, quarter limes, and wash herbs.',
        'Divide noodles between bowls, add greens, carrots, and chicken. Ladle stock over the top and garnish with bean sprouts and spring onions.',
        'Encourage guests to squeeze lime and add herbs and sauces to taste.',
      ],
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('url_to_user_image'),
            ),
            SizedBox(width: 10),
            Text('User Name'),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: FoodCarousel(foods: foods, foodDetails: foodDetails), // Pass foodDetails
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return FoodList(foods: foods, foodDetails: foodDetails); // Pass foodDetails
              },
              childCount: 1, // Only one child, since FoodList handles its own content
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 250), // Added SizedBox for spacing
          ),
        ],
      ),
    );
  }
}

class FoodCarousel extends StatelessWidget {
  final List<Food> foods;
  final Map<String, Fooddiscribe> foodDetails; // Accept foodDetails

  FoodCarousel({required this.foods, required this.foodDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to FoodDetailPage and pass the food details
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetailPage(
                    food: foods[index],
                    foodDescription: foodDetails[foods[index].name]!, // Pass Fooddiscribe
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Image.asset(foods[index].imageUrl, fit: BoxFit.cover, width: double.infinity),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      foods[index].name,
                      style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class FoodList extends StatelessWidget {
  final List<Food> foods;
  final Map<String, Fooddiscribe> foodDetails; // Accept foodDetails

  FoodList({required this.foods, required this.foodDetails});

  @override
  Widget build(BuildContext context) {
    Map<String, List<Food>> groupedFoods = {};
    for (var food in foods) {
      if (groupedFoods[food.country] == null) {
        groupedFoods[food.country] = [];
      }
      groupedFoods[food.country]!.add(food);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: groupedFoods.entries.map((entry) {
        String country = entry.key;
        List<Food> countryFoods = entry.value;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(country, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            GridView.builder(
              shrinkWrap: true, // Ensure the GridView takes only as much space as needed
              physics: NeverScrollableScrollPhysics(), // Disable scrolling for the grid
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of items in each row (2 items per row)
                crossAxisSpacing: 8.0, // Horizontal spacing between items
                mainAxisSpacing: 8.0, // Vertical spacing between items
                childAspectRatio: 1, // Adjust aspect ratio for square-like grid items
              ),
              itemCount: countryFoods.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to FoodDetailPage and pass the food details
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodDetailPage(
                          food: countryFoods[index],
                          foodDescription: foodDetails[countryFoods[index].name]!, // Pass Fooddiscribe
                        ),
                      ),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          countryFoods[index].imageUrl,
                          width: double.infinity,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            countryFoods[index].name,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        );
      }).toList(),
    );
  }
}
