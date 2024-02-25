import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //pet list
  final List _shopPets = [
    // petBreed, petPrice, imagePath, color
    ["Persian Cat", r"$85", "assets/images/prussiancat.png", Colors.white],
    ["Sphinx Cat", r"$60", "assets/images/sphinxcat.png", Colors.white],
    ["Bengal Cat", r"$90", "assets/images/bengalcat.png", Colors.white],
    ["Abyssinian Cat", r"$75", "assets/images/abyssiniancat.png", Colors.white],
    ["Burmese Cat", r"$75", "assets/images/burmesecat.png", Colors.white],
    ["Russian Blue Cat",r"$60","assets/images/russianbluecat.png",Colors.white],
  ];

  get shopPets => _shopPets;
}
