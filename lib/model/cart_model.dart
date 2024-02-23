import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //pet list
  final List _shopPets = [
    // petBreed, petPrice, imagePath, color
    ["Persian Cat", "85", "assets/images/prussiancat.png", Colors.white],
    ["Sphinx Cat", "60", "assets/images/sphinxcat.png", Colors.white],
    ["Bengal Cat", "90", "assets/images/bengalcat.png", Colors.white],
    ["Abyssinian Cat", "75", "assets/images/abyssiniancat.png", Colors.white],
    ["Burmese Cat", "75", "assets/images/burmesecat.png", Colors.white],
    ["Russian Blue Cat","60","assets/images/russianbluecat.png",Colors.white],
  ];

  get shopPets => _shopPets;
}
