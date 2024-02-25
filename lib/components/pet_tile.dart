import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PetTile extends StatelessWidget {
  final String petBreed;
  final String petPrice;
  final String imagePath;
  final color;
  final VoidCallback onTap;

  const PetTile({
    super.key,
    required this.petBreed,
    required this.petPrice,
    required this.imagePath,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.8),
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    imagePath,
                    height: 117.63,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 1.0, top: 5.0),
                  child: Text(
                    petBreed,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 68, 68, 68)),
                  ),
                ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      petPrice,
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 16, color: Color(0xFFE8BE13)),
                    ),
                    const Icon(
                      Icons.shopping_cart,
                      size: 18,
                      color: Color(0xFFE8BE13),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
